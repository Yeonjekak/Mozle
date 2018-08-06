package com.kh.mozle.club.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.mozle.club.model.service.ClubMainService;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.service.MemberService;
import com.kh.mozle.member.model.vo.Member;

@Controller
public class ClubController {
    @Autowired
    ClubMainService service;
    
    
    @RequestMapping("exercise.do")
    public String clubExercise(ClubMain cm, Model model){
    	cm.setC_category("SOCCER");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/sports/exercise";
    }
    
    @RequestMapping("baseball.do")
    public String clubBaseball(ClubMain cm, Model model){
    	cm.setC_category("BASEBALL");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/sports/baseball";
    }
    
    @RequestMapping("basketball.do")
    public String clubBasketball(ClubMain cm, Model model){
    	cm.setC_category("BASKETBALL");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/sports/basketball";
    }
    @RequestMapping("guitar.do")
    public String clubGuitar(ClubMain cm, Model model){
    	cm.setC_category("guitar");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/music/guitar";
    }
    @RequestMapping("piano.do")
    public String clubPiano(ClubMain cm, Model model){
    	cm.setC_category("piano");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/music/piano";
    }
    @RequestMapping("vocal.do")
    public String clubVocal(ClubMain cm, Model model){
    	cm.setC_category("guitar");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/music/vocal";
    }
    
    @RequestMapping("boardgame.do")
    public String clubBoardgame(ClubMain cm, Model model){
    	cm.setC_category("boardgame");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/game/boardgame";
    }
    @RequestMapping("dart.do")
    public String clubDart(ClubMain cm, Model model){
    	cm.setC_category("dart");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/game/dart";
    }
    @RequestMapping("calli.do")
    public String clubCalli(ClubMain cm, Model model){
    	cm.setC_category("calli");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/handmade/calli";
    }
    
    @RequestMapping("crafts.do")
    public String clubCrafts(ClubMain cm, Model model){
    	cm.setC_category("crafts");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/handmade/crafts";
    }
    
    @RequestMapping("jasu.do")
    public String clubJasu(ClubMain cm, Model model){
    	cm.setC_category("jasu");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/handmade/jasu";
    }
    
    @RequestMapping("cat.do")
    public String clubCat(ClubMain cm, Model model){
    	cm.setC_category("cat");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/pet/cat";
    }
    
    @RequestMapping("dog.do")
    public String clubDog(ClubMain cm, Model model){
    	cm.setC_category("dog");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/pet/dog";
    }
    
    @RequestMapping("fish.do")
    public String clubFish(ClubMain cm, Model model){
    	cm.setC_category("fish");
    	List<ClubMain> list=service.getClubList(cm);
    	model.addAttribute("list", list);
    	System.out.println(list);
       return "club/pet/fish";
    }
    
 
    
    
    
    
    
/*    @RequestMapping(value="login.do", method =RequestMethod.POST)
      public String login(Member member, HttpSession session){
         
         Member user = service.selectMember(member);
         
         System.out.println(user);
         if(user!= null && user.getPassword().equals(member.getPassword())){
            session.setAttribute("user", user);
         }else{
            System.out.println("로그인 실패");
         }
         return "index";
      }*/
}