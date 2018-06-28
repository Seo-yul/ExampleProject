package dao;

import java.util.List;

import vo.Board;
import vo.Member;

public interface MemberDao {
	public int insertMember(Member member);
	public Member selectMember(Member member);
}
