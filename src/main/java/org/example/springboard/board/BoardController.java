package org.example.springboard.board;

import org.example.springboard.board.model.BoardEntity;
import org.example.springboard.board.model.BoardVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/board") // 1차 주소값은 requsetmapping 안쪽에선 getMapping, postMapping
public class BoardController {

    @Autowired
    private BoardService service;

    @GetMapping("/list") // return으로 void를 해주게 되면 구조를 맞춰줘야 한다
    public void list(Model model) {
        List<BoardVo> list = service.selBoardList();
        model.addAttribute("list", list);
    }

    @GetMapping("/detail")
    public void detail(Model model, BoardEntity entity) {
        service.updBoardHitsUp(entity);
        model.addAttribute("data", service.selBoard(entity));
    }

    @GetMapping("/write")
    public void write() {}

    @PostMapping("/write")
    public String writeProc(BoardEntity entity, RedirectAttributes reAttr) {
        System.out.println(entity);

        int result = service.insBoard(entity);
        if(result == 0) {
//            RedirectAttributes 는 redirect와 관련되어 있음
//            reAttr.addAttribute("msg", "글 등록에 실패하였습니다"); // addAttribute는 쿼리스트링 생성
            reAttr.addFlashAttribute("msg", "글 등록에 실패하였습니다");
            reAttr.addFlashAttribute("data", entity);
            return "redirect:/board/write";
        }

        return "redirect:/board/list"; // spring에서의 redirect.
    }

    @GetMapping("/del")
    public String del(BoardEntity entity, RedirectAttributes reAttr) {
        int result = service.delBoard(entity);
        if(result == 0) {
            reAttr.addAttribute("iboard", entity.getIboard());// 쿼리스트링 iboard=pk값
            reAttr.addFlashAttribute("msg", "글 삭제에 실패하였습니다");
            return "redirect:/board/detail";
        }
        return "redirect:/board/list";
    }

    @GetMapping("/mod")
    public void mod(BoardEntity entity, Model model) {
        model.addAttribute("data", service.selBoard(entity));
    }

    @PostMapping("/mod")
    public String modProc(BoardEntity entity) {
        int result = service.updBoard(entity);
        return "redirect:/board/detail?iboard=" + entity.getIboard();
    }
}
