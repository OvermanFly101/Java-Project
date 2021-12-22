package com.flynn.javaProject.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.flynn.javaProject.models.Role;
import com.flynn.javaProject.models.User;
import com.flynn.javaProject.repositories.UserRepository;

@Service
public class UserDetailServiceImplementation implements UserDetailsService{
    private UserRepository userRepository;
    
    //added void to fix -FA
    public void UserDetailsServiceImplementation(UserRepository userRepository){
        this.userRepository = userRepository;
    }
    // 1
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> optionalUser = userRepository.findByUsername(username);
        if(optionalUser.isPresent()) {
        	User user = optionalUser.get();
        	return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), getAuthorities(user));
        }else {
        	throw new UsernameNotFoundException("User not found");
        }
    }
    
    // 2
    private List<GrantedAuthority> getAuthorities(User user){
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for(Role role : user.getRoles()) {
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getName());
            authorities.add(grantedAuthority);
        }
        return authorities;
    }

}
