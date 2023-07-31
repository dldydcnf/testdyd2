package net.board.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;

public class BoardReplyAction implements Action{

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
        BoardDAO boarddao = new BoardDAO();
           BoardBean boarddata = new BoardBean();
           ActionForward forward = new ActionForward();
           int result=0;
           
           //파라미터로 넘어온 값을 boarddata 객체에 저장합니다.
           boarddata.setBoard_name(request.getParameter("board_name"));
           boarddata.setBoard_pass(request.getParameter("board_pass"));
           boarddata.setBoard_subject(request.getParameter("board_subject"));
           boarddata.setBoard_content(request.getParameter("board_content"));
           boarddata.setBoard_re_ref(Integer.parseInt(request.getParameter("board_re_ref")));
           boarddata.setBoard_re_lev(Integer.parseInt(request.getParameter("board_re_lev")));
           boarddata.setBoard_re_seq(Integer.parseInt(request.getParameter("board_re_seq")));
          
           //답변을 DB에 저장하기위해 boarddata 객체를 파라미터로 전달하과
           //DAO의 메서드 boardReply을 호출합니다
           result=boarddao.boardReply(boarddata);
           
           // 답변 저장에 실패한 경우
           if (result == 0) {
               System.out.println("답변 등록 실패");
               forward = new ActionForward();
               forward.setRedirect(false);
               forward.setPath("error/error.jsp");
               request.setAttribute("message", "답변 저장 실패하였습니다.");
               return forward;
               
           } 
               // 답변 등록이 성공한 경우
               System.out.println("답변 등록 성공");
               forward.setRedirect(true);
               
               //답변 글 내용을 확인하기 위해 글 내용 보기 페이지를 경로로 설정합니다
               forward.setPath("BoardDetailAction.bo?num=" + result);
               return forward;
       }
   }