package org.devnote.myblog.model.common;

/**
 * Paging Bean
 * 2015/05/08
 * 
 * @author 정현승
 *
 */
public class PageOriginal implements Page {
	
	private int totalListSize; // 페이징 처리할 리스트의 전체 행 갯수
	
	private int pageSize = 5; // 한 페이지당 보여줄 행의 갯수 (기본값:5)

	private int pageGroupSize = 5; // 한 페이지 그룹에 들어갈 페이지의 갯수 (기본값:5)

	private int pageCount; // 페이지 갯수

	private int pageGroupCount; // 페이지 그룹 갯수

	private int currentPage; // 현재 페이지 번호

	private int currentPageGroup; // 현재 페이지 그룹 번호
	
	private int beginRow; // 목록 시작 행 번호

	private int endRow; // 목록 끝 행 번호
	
	private int beginPage; // 페이지그룹 시작 페이지 번호
	
	private int endPage; // 페이지그룹 끝 페이지 번호
	
	
	/*
	 * 다음 변수들은 가독성을 위해 선언했습니다.
	 * isFirstPage는 현재 페이지가 1페이지면 true를 반환하지만
	 * currentPage==1 보다 isFirstPage가 가독성이 더 좋을 수도 있기 때문입니다.
	 */
	private boolean isFirstPage;
	
	private boolean isLastPage;
	
	private boolean isFirstPageGroup;
	
	private boolean isLastPageGroup;
	
	private boolean isEmpty;
	
	
	/*
	 * << 생성자 >>
	 * 
	 * 페이징 처리하기위해 반드시 필요한 변수는 페이징 처리할 리스트의 전체 행 갯수(totalListSize) 입니다. 
	 * 이 변수가 없으면 페이징 연산이 불가능하기 때문에 디폴트 생성자를 만들지 않음으로서
	 * Paging 객체 생성시 tatalListSize를 반드시 초기화 하도록 구현했습니다.
	 * 
	 * 현재 페이지(currentPage), 한 페이지당 보여줄 행의 갯수(pageSize), 
	 * 한 페이지 그룹에 들어갈 페이지의 갯수(pageGroupSize)는 
	 * setter 메소드와 생성자로 변경 할 수 있게 구현했습니다.
	 * 
	 */
	
	public PageOriginal() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 페이징 처리할 리스트의 전체 행 수를 아규먼트에 넘겨주면
	 * 페이징 처리가 완료됩니다.
	 * 현재 페이지는 1로 초기화됩니다.
	 * 한 페이지당 보여줄 행의 갯수는 기본값 5으로 초기화됩니다.
	 * 한 페이지 그룹에 들어갈 페이지의 갯수는 기본값 5로 초기화됩다.
	 * 
	 * @param totalListSize
	 */
	public PageOriginal(int totalListSize) {
		this.totalListSize = totalListSize;
		this.calculate();
	}
	
	/**
	 * 현재 페이지와 
	 * 페이징 처리할 리스트의 전체 행 수를 아규먼트에 넘겨주면
	 * 페이징 처리가 완료됩니다.
	 * 한 페이지당 보여줄 행의 갯수는 기본값 5으로 셋팅됩니다.
	 * 한 페이지 그룹에 들어갈 페이지의 갯수는 기본값 5로 셋팅됩니다.
	 * @param currentPage
	 * @param totalListSize
	 */
	public PageOriginal(int currentPage, int totalListSize) {
		this.currentPage = currentPage;
		this.totalListSize = totalListSize;
		this.calculate();
	}
	
	/**
	 * 
	 * 현재 페이지, 전체 행 수, 한 페이지당 보여줄 행 수, 한 페이지 그룹에 보여줄 페이지 수를
	 * 아규먼트에 넘겨주면 페이징 처리가 완료됩니다.
	 * 
	 * @param currentPage
	 * @param pageSize
	 * @param pageGroupSize
	 * @param totalListSize
	 */
	public PageOriginal(int currentPage, int pageSize, int pageGroupSize, int totalListSize) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.pageGroupSize = pageGroupSize;
		this.totalListSize = totalListSize;
		this.calculate();
	}
	
	/**
	 * setter 메소드, 생성자를 통해 초기화된 변수들을 바탕으로 실질적으로 페이징 처리 연산을 하는 메소드 입니다.
	 * 
	 */
	private void calculate() {
		
		if(totalListSize==0) this.isEmpty = true;
		
		this.pageCount = (totalListSize/pageSize) + (totalListSize % pageSize == 0 ? 0 : 1);
		
		if(currentPage<=0) currentPage=1; //현재 페이지가 0 이하일때 1로 초기화
		
		if(currentPage>pageCount) currentPage=pageCount; //현재 페이지가 페이지 갯수를 초과할때 마지막 페이지로 할당

		this.pageGroupCount = (pageCount/pageGroupSize) + (pageCount % pageGroupSize == 0 ? 0 : 1);
		
		this.currentPageGroup = (currentPage/pageGroupSize) + (currentPage % pageGroupSize == 0 ? 0 : 1);
		
		this.beginRow = !isEmpty ? pageSize * (currentPage-1) + 1 : 0;
	
		this.endRow = (currentPage==pageCount) ? totalListSize : (pageSize*currentPage);
		
		this.beginPage = !isEmpty ? (pageGroupSize * currentPageGroup) - (pageGroupSize - 1) : 0;
				
		this.endPage = (beginPage + (pageGroupSize -1)) < pageCount ? (beginPage + (pageGroupSize -1)) : pageCount;
				
		this.isFirstPage = (currentPage == 1) ? true : false;
		
		this.isLastPage = (currentPage == pageCount) ? true : false;
		
		this.isFirstPageGroup = (currentPageGroup) == 1 ? true : false;
		
		this.isLastPageGroup = (currentPageGroup == pageGroupCount) ? true : false;
	
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getTotalListSize()
	 */
	@Override
	public int getTotalListSize() {
		return totalListSize;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getPageSize()
	 */
	@Override
	public int getPageSize() {
		return pageSize;
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#setPageSize(int)
	 */
	@Override
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
		calculate();
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getPageGroupSize()
	 */
	@Override
	public int getPageGroupSize() {
		return pageGroupSize;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#setPageGroupSize(int)
	 */
	@Override
	public void setPageGroupSize(int pageGroupSize) {
		this.pageGroupSize = pageGroupSize;
		calculate();
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getCurrentPage()
	 */
	@Override
	public int getCurrentPage() {
		return currentPage;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#setCurrentPage(int)
	 */
	@Override
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		calculate();
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getPageCount()
	 */
	@Override
	public int getPageCount() {
		return pageCount;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getPageGroupCount()
	 */
	@Override
	public int getPageGroupCount() {
		return pageGroupCount;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getCurrentPageGroup()
	 */
	@Override
	public int getCurrentPageGroup() {
		return currentPageGroup;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getBeginRow()
	 */
	@Override
	public int getBeginRow() {
		return beginRow;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getEndRow()
	 */
	@Override
	public int getEndRow() {
		return endRow;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getBeginPage()
	 */
	@Override
	public int getBeginPage() {
		return beginPage;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#getEndPage()
	 */
	@Override
	public int getEndPage() {
		return endPage;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#isFirstPage()
	 */
	@Override
	public boolean isFirstPage() {
		return isFirstPage;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#isLastPage()
	 */
	@Override
	public boolean isLastPage() {
		return isLastPage;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#isFirstPageGroup()
	 */
	@Override
	public boolean isFirstPageGroup() {
		return isFirstPageGroup;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#isLastPageGroup()
	 */
	@Override
	public boolean isLastPageGroup() {
		return isLastPageGroup;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#isEmpty()
	 */
	@Override
	public boolean isEmpty() {
		return isEmpty;
	}

	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#toString()
	 */
	@Override
	public String toString() {
		return "\n\nPaging [totalListSize=" + totalListSize + ", pageSize="
				+ pageSize + ", pageGroupSize=" + pageGroupSize
				+ ", pageCount=" + pageCount + ", pageGroupCount="
				+ pageGroupCount + "\n ,currentPage=" + currentPage
				+ ", currentPageGroup=" + currentPageGroup + ", beginRow="
				+ beginRow + ", endRow=" + endRow + ", beginPage=" + beginPage
				+ ", endPage=" + endPage + "\n" + ", isFirstPage=" + isFirstPage
				+ ", isLastPage=" + isLastPage + ", isFirstPageGroup=" + isFirstPageGroup
				+ ", isLastPageGroup=" + isLastPageGroup + "]";
	}
	
	/* (non-Javadoc)
	 * @see org.devnote.myblog.model.common.Page#preview()
	 */
	public StringBuilder preview() {
		StringBuilder str = new StringBuilder();
		str.append("\n");
		str.append(" -------------------\n");
		str.append(" |     Preview     |\n");
		str.append(" -------------------\n");

		if (!isEmpty) {
			for (int i = beginRow; i <= endRow; i++) {
				str.append(" ROWNUM = " + i + " 입니다.\n");
			}

			str.append("\n");

			if (!isFirstPageGroup) {
				str.append("1 ... ");
			}

			for (int i = beginPage; i <= endPage; i++) {
				if (i == currentPage) {
					str.append("(" + i + ") ");
				} else {
					str.append(i + " ");
				}
			}
			if (!isLastPageGroup) {
				str.append("... " + pageCount);
			}
			str.append(" >>");
		} else {
			str.append("	Empty!");
		}
		System.out.println(str);
		return str;
	}

}