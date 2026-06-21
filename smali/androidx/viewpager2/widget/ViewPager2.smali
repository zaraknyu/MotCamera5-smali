.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

.field public mCurrentItem:I

.field public final mCurrentItemDataSetChangeObserver:Landroidx/viewpager2/widget/ViewPager2$1;

.field public mCurrentItemDirty:Z

.field public final mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field public final mFakeDragger:Lcom/google/android/gms/tasks/zza;

.field public final mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

.field public mOffscreenPageLimit:I

.field public final mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field public final mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

.field public final mPagerSnapHelper:Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

.field public mPendingAdapterState:Landroid/os/Parcelable;

.field public mPendingCurrentItem:I

.field public final mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

.field public mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field public mSavedItemAnimatorPresent:Z

.field public final mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

.field public final mTmpChildRect:Landroid/graphics/Rect;

.field public final mTmpContainerRect:Landroid/graphics/Rect;

.field public mUserInputEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    new-instance v2, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v2, v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/viewpager2/widget/ViewPager2$1;

    const/4 v2, -0x1

    iput v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    iput v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    new-instance v4, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v4, p0}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    new-instance v4, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-direct {v4, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v4, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-direct {v4, p0}, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    sget-object v7, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    invoke-static/range {v5 .. v11}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {v9, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {v5, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-direct {p0, v5}, Landroidx/viewpager2/widget/ScrollEventAdapter;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    new-instance p1, Lcom/google/android/gms/tasks/zza;

    const/16 p2, 0x14

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    iput-object p1, v5, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Lcom/google/android/gms/tasks/zza;

    new-instance p0, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    invoke-direct {p0, v5}, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    iget-object p1, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iget-object p1, v5, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-direct {p0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>()V

    iput-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, v5, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iput-object p0, p1, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$2;

    invoke-direct {p1, v5, v1}, Landroidx/viewpager2/widget/ViewPager2$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$2;

    invoke-direct {p2, v5, v3}, Landroidx/viewpager2/widget/ViewPager2$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object p1, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {p1, v3, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/viewpager2/widget/PageTransformerAdapter;

    iget-object p1, v5, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/PageTransformerAdapter;-><init>(Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;)V

    iput-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    iget-object p1, v5, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v5, p0, v1, p1}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    return p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    return p0
.end method

.method public getOrientation()I
    .locals 1

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPageSize()I
    .locals 2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_0
.end method

.method public getScrollState()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    return p0
.end method

.method public final isRtl()Z
    .locals 1

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    move v3, v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    move v3, v0

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/google/firebase/components/Component$$Lambda$2;->obtain(III)Lcom/google/firebase/components/Component$$Lambda$2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/firebase/components/Component$$Lambda$2;->arg$1:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v2, :cond_4

    const/16 v2, 0x2000

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    sub-int/2addr v0, v1

    if-ge p0, v0, :cond_5

    const/16 p0, 0x1000

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    iput p5, v2, Landroid/graphics/Rect;->bottom:I

    const p2, 0x800033

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0, v2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p5, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p5, p1, p2, p4, p3}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->updateCurrentItem()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    return-object v1

    :cond_1
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v2, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "f#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v7, v0, v6, v8}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->containsItem(J)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "s#"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    :cond_6
    return-object v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ViewPager2 does not support direct child views"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1000

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object p2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    :goto_2
    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    :cond_5
    return v0
.end method

.method public final registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final restorePendingState()V
    .locals 15

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    instance-of v4, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    iget-object v6, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-nez v8, :cond_2

    const-class v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "f#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_6

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v12, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    move-object v14, v5

    goto :goto_2

    :cond_4
    iget-object v14, v12, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v14, v13}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v14

    if-eqz v14, :cond_5

    :goto_2
    invoke-virtual {v6, v10, v11, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment no longer exists for key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": unique id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/IllegalStateException;)V

    throw v5

    :cond_6
    const-string/jumbo v10, "s#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_7

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v4, v10, v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->containsItem(J)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v7, v10, v11, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected key in savedState: "

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iput-boolean v3, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mHasStaleFragments:Z

    iput-boolean v3, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mIsInGracePeriod:Z

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->gcFragments()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Landroidx/lifecycle/LiveData$1;

    const/16 v7, 0xd

    invoke-direct {v6, v7, v4}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v7, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v2, v6}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-wide/16 v7, 0x2710

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    iput-object v5, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    :cond_b
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->updatePageAccessibilityActions()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz v0, :cond_0

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/viewpager2/widget/ViewPager2$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->updatePageAccessibilityActions()V

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_3
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Lcom/google/android/gms/tasks/zza;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    return-void
.end method

.method public final setCurrentItemInternal(IZ)V
    .locals 9

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p1, v0, :cond_2

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iget v3, v3, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    int-to-double v3, v0

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->updatePageAccessibilityActions()V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iget v5, v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-object v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    iget v3, v0, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    int-to-double v3, v3

    iget v0, v0, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v5, v0

    add-double/2addr v3, v5

    :goto_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    if-eqz p2, :cond_6

    move v6, v5

    goto :goto_2

    :cond_6
    const/4 v6, 0x3

    :goto_2
    iput v6, v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    iget v6, v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq v6, p1, :cond_7

    move v1, v2

    :cond_7
    iput p1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    invoke-virtual {v0, v5}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    if-eqz v1, :cond_8

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    :cond_8
    if-nez p2, :cond_9

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_9
    int-to-double v0, p1

    sub-double v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpl-double p2, v5, v7

    if-lez p2, :cond_b

    cmpl-double p2, v0, v3

    if-lez p2, :cond_a

    add-int/lit8 p2, p1, -0x3

    goto :goto_3

    :cond_a
    add-int/lit8 p2, p1, 0x3

    :goto_3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    new-instance p2, Landroidx/core/provider/CallbackWrapper$2;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-direct {p2, p1, p0}, Landroidx/core/provider/CallbackWrapper$2;-><init>(ILandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_b
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->updatePageAccessibilityActions()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->updatePageAccessibilityActions()V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    iget-object v1, v0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    iput-object p1, v0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    if-nez p1, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-object p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    int-to-double v0, v0

    iget p1, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager2/widget/PageTransformerAdapter;->onPageScrolled(IFI)V

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->updatePageAccessibilityActions()V

    return-void
.end method

.method public final updateCurrentItem()V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->onPageSelected(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
