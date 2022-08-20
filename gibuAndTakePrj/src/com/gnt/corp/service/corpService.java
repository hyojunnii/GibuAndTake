package com.gnt.corp.service;

import static com.gnt.common.JDBCTemplate.close;
import static com.gnt.common.JDBCTemplate.commit;
import static com.gnt.common.JDBCTemplate.getConnection;
import static com.gnt.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.gnt.corp.repository.corpDao;
import com.gnt.corp.vo.corpVo;
import com.gnt.member.repository.MemberDao;
import com.gnt.member.vo.MemberVo;

public class corpService {
	
	public int corpjoin(MemberVo vo) {
		
		//id 유효성 검사 (4글자 이상인지)
		
				if(vo.getId().length() < 4) {
					// 회원가입 불가. 다음단계 진행 x 
					return -1;
				}
				
				//pwd 검사 (4글자 이상인지)
				if(vo.getPwd().length() < 4) {
					// 회원가입 불가. 다음단계 진행 x 
					return -2;
				}
				
				//아이디 중복 검사
				
				//vo 를 DB에 insert 
				
				//커넥션 준비
				Connection conn = null;
				int result = 0;
				try {
					conn = getConnection(); 
					
					result = new MemberDao().memberjoin(vo, conn);
					
					if(result == 1) {
							result2 = new corpDao().corpjoin(vo, conn);
						if(result2 == 1) {
							commit(conn);
						} else {
							rollback(conn);
						}
						commit(conn);
					}else {
						rollback(conn);
					}
					
				} catch (Exception e) {
					rollback(conn);
					e.printStackTrace();
				} finally {
					close(conn);
				}
				
				
				
				return result;
		}

	public int corpjoin(corpVo cvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	



		
	}



