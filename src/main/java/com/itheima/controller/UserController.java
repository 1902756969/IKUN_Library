package com.itheima.controller;

import com.itheima.domain.User;
import com.itheima.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
   private UserService userService;


    @RequestMapping(value="/login")
    public ModelAndView login(@RequestParam("loginName") String loginName,
                              @RequestParam("password") String password,
                              HttpSession session,
                              ModelAndView mav){
        // 调用业务逻辑组件判断用户是否可以登录
        List<User> user = userService.checkUser(loginName, password);
        System.out.println(loginName);
        if(user.size()>0){
            // 将用户保存到HttpSession当中
            System.out.println("HttpSession");
            session.setAttribute("loginUser", loginName);
            // 客户端跳转到main页面
            mav.setViewName("redirect:/pages/main.html");
        }else{
            // 设置登录失败提示信息
            System.out.println("设置登录失败提示信息");
            mav.addObject("loginErrMsg", "登录名或密码错误!请重新输入!");
            // 服务器内部跳转到登录页面
            mav.setViewName("loginForm");
        }
        return mav;
    }



    /*@GetMapping("/list")
    public String toUserList(Model model){
        List<User> allUser = userService.getAllUser(example);
        model.addAttribute("list",allUser);
        return "user/user_list";
    }

    @GetMapping("/add")
    public String toUserAdd(){
        return "user/user_add";
    }

    @PostMapping("/add")
    public String addUser(User user){
        userService.insertUser(user);
        System.out.println("添加管理员信息"+user);
        return "user/user_list";

    }

    @GetMapping("/edit")
    public String toEdit(Integer id){
        return "user/user_edit";
    }

    @GetMapping("/edit/{id}")
    public String toEditUser(@PathVariable("id") Integer id,Model model){
        User oneUser = userService.getOneUser(id);
        System.out.println(oneUser);
        model.addAttribute("user",oneUser);
        return "user/user_edit";
    }

//    @GetMapping("/edit")
//    public String updateUser(User user){
//        System.out.println("修改后的数据"+user);
//        return "user/list";
//    }

    @PutMapping("/edit")
    public String updateUser(User user){
        userService.updateUser(user);
        System.out.println("修改后的数据"+user);
        return "redirect:/user/list";
    }

    @DeleteMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") Integer id){
        System.out.println(id);
//        if(id!=null){
//            userService.deleteUser(id);
//        }
        return "redirect:/user/list";
    }

//    @GetMapping("/delete/{id}")
//    public String deleteUser(@PathVariable("id")Integer id){
//        System.out.println("删除数据的id值"+id);
//        userService.deleteUser(id);
//        return "redirect:/user/list";
//    }
//    @GetMapping("/hello")
//        public String hello(){
//        return "hello";
//        }

//    @RequestMapping("/test")
//    public String test(){
//        return "welcome";
//    }*/
}
