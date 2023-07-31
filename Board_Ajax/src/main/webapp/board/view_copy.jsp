<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<link href="${pageContext.request.contextPath}/css/view.css" type="text/css" rel="stylesheet">
<div class="comment-area">
	<div class="comment-head">
		<h3 class="comment-count">
			댓글 <sup id="count" style="font-family: arial, sans-serif;">3</sup>
		</h3>
		<div class="comment-order">
			<ul class="comment-order-list">
				<li class="comment-order-item red"><a
					href="javascript:getList(1)" class="comment-order-button">등록순 </a>
				</li>
				<li class="comment-order-item gray"><a
					href="javascript:getList(2)" class="comment-order-button">최신순</a></li>
			</ul>
		</div>
	</div>
	<ul class="comment-list">
		<li id="21" class="comment-list-item">
			<div class="comment-nick-area">
				<img src="memberupload/icecream1.png" alt="프로필 사진" width="36"
					height="36">
				<div class="comment-box">
					<div class="comment-nick-box">
						<div class="comment-nick-info">
							<div class="comment-nickname">admin</div>
						</div>
					</div>
				</div>
				<div class="comment-text-box">
					<p class="comment-text-view">
						<span class="text-comment">댓글을 남겨요</span>
					</p>
				</div>
				<div class="comment-info-box">
					<span class="comment-info-date">2023-07-31 08:50:36</span> <a
						href="javascript:replyform(21,0,0,21)" class="comment-info-button">답글쓰기</a>
				</div>
				<div class="comment-tool">
					<div title="더보기" class="comment-tool-button">
						<div>...</div>
					</div>
					<div id="comment-list-item-layer21" class="LayerMore">
						<ul class="layer-list">
							<li class="layer-item"><a href="javascript:updateForm(21)"
								class="layer-button">수정</a>&nbsp;&nbsp; <a
								href="javascript:del(21)" class="layer-button">삭제</a></li>
						</ul>
					</div>
				</div>
			</div>
		</li>
		<li id="22" class="comment-list-item comment-list-item--reply lev1">
			<div class="comment-nick-area">
				<img src="memberupload/Lemon.png" alt="프로필 사진" width="36"
					height="36">
				<div class="comment-box">
					<div class="comment-nick-box">
						<div class="comment-nick-info">
							<div class="comment-nickname">B1234</div>
						</div>
					</div>
				</div>
				<div class="comment-text-box">
					<p class="comment-text-view">
						<span class="text-comment">더운 날씨 잘~ 지내시죠?</span>
					</p>
				</div>
				<div class="comment-info-box">
					<span class="comment-info-date">2023-07-31 08:51:15</span> <a
						href="javascript:replyform(22,1,1,21)" class="comment-info-button">답글쓰기</a>
				</div>
			</div>
		</li>
		<li id="23" class="comment-list-item">
			<div class="comment-nick-area">
				<img src="image/profile.png" alt="프로필 사진" width="36" height="36">
				<div class="comment-box">
					<div class="comment-nick-box">
						<div class="comment-nick-info">
							<div class="comment-nickname">admin2</div>
						</div>
					</div>
				</div>
				<div class="comment-text-box">
					<p class="comment-text-view">
						<span class="text-comment">입실 체크 꼭 해주세요</span>
					</p>
				</div>
				<div class="comment-info-box">
					<span class="comment-info-date">2023-07-31 08:52:00</span> <a
						href="javascript:replyform(23,0,0,23)" class="comment-info-button">답글쓰기</a>
				</div>
			</div>
		</li>
	</ul>
	<div class="comment-write">
		<div class="comment-write-area">
			<b class="comment-write-area-name">admin</b> <span
				class="comment-write-area-count">0/200</span>
			<textarea placeholder="댓글을 남겨보세요" rows="1"
				class="comment-write-area-text" maxlength="200"></textarea>

		</div>
		<div class="register-box">
			<div class="button btn-cancel">취소</div>
			<div class="button btn-register">등록</div>
		</div>
	</div>
</div>