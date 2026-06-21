.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# static fields
.field public static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field public final mAlignItems:I

.field public final mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

.field public final mContext:Landroid/content/Context;

.field public mDirtyPosition:I

.field public mFlexDirection:I

.field public mFlexLines:Ljava/util/List;

.field public final mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

.field public mFlexWrap:I

.field public final mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

.field public mFromBottomToTop:Z

.field public mIsRtl:Z

.field public mJustifyContent:I

.field public mLastHeight:I

.field public mLastWidth:I

.field public mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

.field public final mMaxLine:I

.field public mOrientationHelper:Landroidx/room/RoomOpenDelegate;

.field public mParent:Landroid/view/View;

.field public mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field public mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field public mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field public mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

.field public final mViewCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/motorola/camera/AppFeatures;

    invoke-direct {v1, p0}, Lcom/motorola/camera/AppFeatures;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    .line 5
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 6
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 7
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 8
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 9
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 11
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 12
    new-instance v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap()V

    .line 17
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 19
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 21
    iput v0, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    .line 22
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 28
    new-instance v1, Lcom/motorola/camera/AppFeatures;

    invoke-direct {v1, p0}, Lcom/motorola/camera/AppFeatures;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    .line 29
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 30
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 31
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 32
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 33
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 34
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 35
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 36
    new-instance v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    .line 39
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p2

    .line 40
    iget p3, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 42
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 43
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 44
    :cond_2
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_3

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap()V

    .line 48
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    .line 49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    .line 50
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 51
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 52
    iput p4, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    .line 53
    iput p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 55
    :cond_4
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isMeasurementUpToDate(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-le v0, p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final canScrollVertically()Z
    .locals 3

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-le v0, p0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return p0
.end method

.method public final computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeScrollExtent$2(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p1, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p0}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final computeScrollOffset$2(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, [I

    aget p1, v3, p1

    if-eqz p1, :cond_3

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    aget v2, v3, v2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p0, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final computeScrollRange$2(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(II)Landroid/view/View;

    move-result-object v1

    const/4 v3, -0x1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(II)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v4, v0}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p0, v2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float p0, p0

    int-to-float v0, v3

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange$2(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final ensureOrientationHelper()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    return-void

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_3

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    return-void

    :cond_3
    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    return-void
.end method

.method public final fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    iget v5, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    if-gez v5, :cond_0

    add-int/2addr v3, v5

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    :cond_1
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    move v7, v3

    const/4 v8, 0x0

    :goto_0
    if-gtz v7, :cond_3

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-boolean v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v26, v3

    goto/16 :goto_19

    :cond_3
    :goto_1
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    if-ltz v10, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-ltz v10, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v10, v9, :cond_2

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/google/android/flexbox/FlexLine;

    iget v9, v12, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    iput v9, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    const/16 v18, 0x20

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const-string v13, "Invalid justifyContent is set: "

    const/4 v4, -0x1

    const/high16 v19, 0x40000000    # 2.0f

    sget-object v15, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    if-eqz v9, :cond_13

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v23

    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v14, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    move/from16 v26, v3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v4, :cond_4

    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v14, v3

    :cond_4
    move v3, v14

    iget v14, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v4, :cond_d

    move/from16 v27, v3

    const/4 v3, 0x1

    if-eq v4, v3, :cond_c

    const/4 v3, 0x2

    if-eq v4, v3, :cond_b

    const/4 v3, 0x3

    if-eq v4, v3, :cond_9

    const/4 v3, 0x4

    if-eq v4, v3, :cond_7

    const/4 v3, 0x5

    if-ne v4, v3, :cond_6

    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v3, :cond_5

    iget v4, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v11, v4

    int-to-float v4, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float v3, v4, v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    int-to-float v4, v9

    add-float/2addr v4, v3

    sub-int v11, v11, v23

    int-to-float v9, v11

    sub-float/2addr v9, v3

    goto :goto_6

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v3, :cond_8

    iget v4, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v11, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    int-to-float v4, v9

    div-float v9, v3, v19

    add-float/2addr v4, v9

    sub-int v11, v11, v23

    int-to-float v11, v11

    sub-float v9, v11, v9

    goto :goto_6

    :cond_9
    int-to-float v4, v9

    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v9, 0x1

    if-eq v3, v9, :cond_a

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    move/from16 v16, v3

    goto :goto_4

    :cond_a
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_4
    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v3, v11, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    sub-int v11, v11, v23

    int-to-float v9, v11

    goto :goto_6

    :cond_b
    int-to-float v3, v9

    iget v4, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v11, v4

    int-to-float v4, v4

    div-float v4, v4, v19

    add-float/2addr v3, v4

    sub-int v11, v11, v23

    int-to-float v9, v11

    sub-float/2addr v9, v4

    move v4, v3

    :goto_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v11, v3

    add-int v11, v11, v23

    int-to-float v4, v11

    sub-int/2addr v3, v9

    int-to-float v9, v3

    goto :goto_5

    :cond_d
    move/from16 v27, v3

    int-to-float v4, v9

    sub-int v11, v11, v23

    int-to-float v9, v11

    goto :goto_5

    :goto_6
    iget v10, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    int-to-float v10, v10

    sub-float/2addr v4, v10

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v10, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v17, v3

    move v11, v14

    const/4 v13, 0x0

    :goto_7
    add-int v3, v14, v10

    if-ge v11, v3, :cond_12

    move v3, v11

    invoke-virtual {v0, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_e

    move/from16 v19, v3

    move/from16 v23, v5

    move/from16 v22, v10

    move/from16 v21, v14

    move-object/from16 v28, v15

    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_e
    move/from16 v16, v3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v19, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    invoke-virtual {v0, v15, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v11, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    :goto_8
    move v3, v13

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v15, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v11, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :goto_9
    iget-object v13, v6, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v13, [J

    move/from16 v23, v5

    aget-wide v4, v13, v16

    long-to-int v13, v4

    shr-long v4, v4, v18

    long-to-int v4, v4

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-virtual {v0, v11, v13, v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual {v11, v13, v4}, Landroid/view/View;->measure(II)V

    :cond_10
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v13

    int-to-float v4, v4

    add-float v4, v19, v4

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move/from16 v20, v3

    move-object/from16 v3, v19

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v3

    int-to-float v3, v13

    sub-float/2addr v9, v3

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v3, v27, v3

    iget-boolean v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v13, :cond_11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v13, v13, v19

    move-object/from16 v19, v15

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v3

    move/from16 v22, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    move-object/from16 v28, v19

    move/from16 v19, v16

    move/from16 v16, v21

    move/from16 v21, v14

    move v14, v3

    const/4 v3, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/motorola/camera/AppFeatures;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    goto :goto_a

    :cond_11
    move/from16 v22, v10

    move/from16 v21, v14

    move-object/from16 v28, v15

    move/from16 v19, v16

    move v14, v3

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v16, v10, v14

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    invoke-virtual/range {v10 .. v16}, Lcom/motorola/camera/AppFeatures;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v13

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v13

    int-to-float v10, v10

    add-float v10, v10, v17

    add-float/2addr v10, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v4, v4, v17

    sub-float/2addr v9, v4

    move v4, v10

    move/from16 v13, v20

    :goto_b
    add-int/lit8 v11, v19, 0x1

    move/from16 v14, v21

    move/from16 v10, v22

    move/from16 v5, v23

    move-object/from16 v15, v28

    goto/16 :goto_7

    :cond_12
    move/from16 v23, v5

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_17

    :cond_13
    move/from16 v26, v3

    move/from16 v23, v5

    move-object/from16 v28, v15

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v11, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget v14, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_14

    iget v14, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int v15, v11, v14

    add-int/2addr v11, v14

    move/from16 v27, v11

    move/from16 v25, v15

    goto :goto_c

    :cond_14
    move/from16 v25, v11

    move/from16 v27, v25

    :goto_c
    iget v11, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v14, :cond_1d

    if-eq v14, v3, :cond_1c

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1b

    const/4 v15, 0x3

    if-eq v14, v15, :cond_19

    const/4 v15, 0x4

    if-eq v14, v15, :cond_17

    const/4 v15, 0x5

    if-ne v14, v15, :cond_16

    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v13, :cond_15

    iget v14, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    add-int/lit8 v13, v13, 0x1

    int-to-float v13, v13

    div-float v13, v14, v13

    goto :goto_d

    :cond_15
    const/4 v13, 0x0

    :goto_d
    int-to-float v4, v4

    add-float/2addr v4, v13

    sub-int/2addr v9, v5

    int-to-float v5, v9

    sub-float/2addr v5, v13

    goto :goto_11

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v13, :cond_18

    iget v14, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    int-to-float v13, v13

    div-float v13, v14, v13

    goto :goto_e

    :cond_18
    const/4 v13, 0x0

    :goto_e
    int-to-float v4, v4

    div-float v14, v13, v19

    add-float/2addr v4, v14

    sub-int/2addr v9, v5

    int-to-float v5, v9

    sub-float/2addr v5, v14

    goto :goto_11

    :cond_19
    int-to-float v4, v4

    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eq v13, v3, :cond_1a

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    goto :goto_f

    :cond_1a
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_f
    iget v14, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    div-float v13, v14, v13

    sub-int/2addr v9, v5

    int-to-float v5, v9

    goto :goto_11

    :cond_1b
    int-to-float v4, v4

    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    div-float v13, v13, v19

    add-float/2addr v4, v13

    sub-int/2addr v9, v5

    int-to-float v5, v9

    sub-float/2addr v5, v13

    :goto_10
    const/4 v13, 0x0

    goto :goto_11

    :cond_1c
    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v9, v13

    add-int/2addr v9, v5

    int-to-float v5, v9

    sub-int/2addr v13, v4

    int-to-float v4, v13

    move v13, v5

    move v5, v4

    move v4, v13

    goto :goto_10

    :cond_1d
    int-to-float v4, v4

    sub-int/2addr v9, v5

    int-to-float v5, v9

    goto :goto_10

    :goto_11
    iget v9, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    int-to-float v9, v9

    sub-float/2addr v4, v9

    sub-float/2addr v5, v9

    const/4 v10, 0x0

    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v10, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move v13, v11

    const/4 v14, 0x0

    :goto_12
    add-int v15, v11, v10

    if-ge v13, v15, :cond_24

    move v15, v11

    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1e

    move/from16 v24, v15

    move-object/from16 v3, v28

    move/from16 v28, v10

    move v10, v5

    move v5, v13

    goto/16 :goto_16

    :cond_1e
    iget-object v3, v6, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v3, [J

    move/from16 v16, v4

    aget-wide v3, v3, v13

    move/from16 v17, v5

    long-to-int v5, v3

    shr-long v3, v3, v18

    long-to-int v3, v3

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-virtual {v0, v11, v5, v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-virtual {v11, v5, v3}, Landroid/view/View;->measure(II)V

    :cond_1f
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    add-float v3, v16, v3

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v20, v3

    move-object/from16 v3, v16

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    int-to-float v3, v5

    sub-float v5, v17, v3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v21, v5

    const/4 v5, 0x1

    if-ne v3, v5, :cond_20

    move-object/from16 v3, v28

    invoke-virtual {v0, v3, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    const/4 v5, -0x1

    invoke-virtual {v0, v11, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    :goto_13
    move/from16 v22, v14

    goto :goto_14

    :cond_20
    move-object/from16 v3, v28

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v11, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :goto_14
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int v14, v25, v14

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v16, v27, v5

    move v5, v13

    iget-boolean v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v13, :cond_22

    iget-boolean v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v14, :cond_21

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v16, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v17, v17, v24

    move/from16 v24, v15

    move/from16 v15, v17

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v28, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    invoke-virtual/range {v10 .. v17}, Lcom/motorola/camera/AppFeatures;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_15

    :cond_21
    move/from16 v28, v10

    move/from16 v24, v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v14, v16, v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    invoke-virtual/range {v10 .. v17}, Lcom/motorola/camera/AppFeatures;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_15

    :cond_22
    move/from16 v28, v10

    move/from16 v24, v15

    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v10, :cond_23

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int v16, v10, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v17

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    invoke-virtual/range {v10 .. v17}, Lcom/motorola/camera/AppFeatures;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_15

    :cond_23
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int v16, v10, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    invoke-virtual/range {v10 .. v17}, Lcom/motorola/camera/AppFeatures;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    :goto_15
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v13

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v13

    int-to-float v10, v10

    add-float/2addr v10, v9

    add-float v10, v10, v20

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v4

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v4

    int-to-float v4, v13

    add-float/2addr v4, v9

    sub-float v4, v21, v4

    move v14, v10

    move v10, v4

    move v4, v14

    move/from16 v14, v22

    :goto_16
    add-int/lit8 v13, v5, 0x1

    move v5, v10

    move/from16 v11, v24

    move/from16 v10, v28

    move-object/from16 v28, v3

    const/4 v3, 0x1

    goto/16 :goto_12

    :cond_24
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :goto_17
    add-int/2addr v8, v3

    if-nez v23, :cond_25

    iget-boolean v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_25

    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v3, v4

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    sub-int/2addr v4, v3

    iput v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    goto :goto_18

    :cond_25
    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v3, v4

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    :goto_18
    iget v3, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v7, v3

    move/from16 v5, v23

    move/from16 v3, v26

    const/high16 v4, -0x80000000

    goto/16 :goto_0

    :goto_19
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v3, v8

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_27

    add-int/2addr v4, v8

    iput v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v3, :cond_26

    add-int/2addr v4, v3

    iput v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    :cond_27
    iget v0, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v26, v0

    return v3
.end method

.method public final findFirstReferenceChild(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, [I

    aget v0, v1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v4, v2}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v4, v2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final findLastReferenceChild(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, [I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v4, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v4, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final findOneVisibleChild(II)Landroid/view/View;
    .locals 12

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eq p1, p2, :cond_6

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v8

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v8, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v9

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v7

    const/4 v7, 0x0

    if-ge v8, v5, :cond_2

    if-lt v10, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v0

    :goto_2
    if-ge v9, v6, :cond_3

    if-lt v11, v4, :cond_4

    :cond_3
    move v7, v0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    return-object v2

    :cond_5
    add-int/2addr p1, v1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findReferenceChild(III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v2}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v2

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_6

    if-ge v6, p3, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v6, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v6, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v2, :cond_4

    goto :goto_2

    :cond_4
    return-object v5

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    move-object v3, v5

    :cond_6
    :goto_3
    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    return-object v3

    :cond_8
    return-object v4
.end method

.method public final fixLayoutEndGap$1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_2

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p3}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p0, p3}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_1
    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final fixLayoutStartGap$1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_2

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p3}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    sub-int/2addr p2, p1

    :cond_1
    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const p1, 0xffffff

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    return-object p0
.end method

.method public final getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    add-int/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public final getFlexItemAt(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public final getLargestMainSize()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v2, -0x80000000

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_3

    if-gez p1, :cond_2

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_2

    :cond_3
    if-lez p1, :cond_2

    goto :goto_1

    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput v5, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    if-nez v7, :cond_4

    iget-boolean v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v8, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    if-ne v5, v3, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v14, v10}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v14

    iput v14, v11, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    if-gez v11, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v14, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v14, [I

    aget v14, v14, v11

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {v0, v10, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v10

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v11, v3

    iput v11, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget-object v15, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v15, [I

    move/from16 v16, v3

    array-length v3, v15

    if-gt v3, v11, :cond_7

    iput v4, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    goto :goto_4

    :cond_7
    aget v3, v15, v11

    iput v3, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    :goto_4
    if-eqz v8, :cond_8

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, v10}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v8, v10}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    neg-int v8, v8

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v10}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v10

    add-int/2addr v10, v8

    iput v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v8, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    goto :goto_5

    :cond_8
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3, v10}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v8, v10}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v10}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :goto_5
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eq v3, v4, :cond_9

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_12

    :cond_9
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-gt v3, v4, :cond_12

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    sub-int v14, v6, v4

    const/4 v4, 0x0

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iput-object v4, v11, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    if-lez v14, :cond_12

    if-eqz v7, :cond_a

    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    goto :goto_6

    :cond_a
    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    move/from16 v17, v13

    move v13, v12

    move/from16 v12, v17

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v18

    :goto_6
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual {v9, v12, v13, v3}, Lcom/motorola/camera/AppFeatures;->determineMainSize(III)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual {v9, v3}, Lcom/motorola/camera/AppFeatures;->stretchViews(I)V

    goto/16 :goto_9

    :cond_b
    move/from16 v16, v3

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_c

    goto/16 :goto_a

    :cond_c
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v10, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    iput v10, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-gez v7, :cond_d

    goto/16 :goto_a

    :cond_d
    iget-object v10, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v10, [I

    aget v10, v10, v7

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {v0, v3, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v3

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v9, [I

    aget v9, v9, v7

    if-ne v9, v4, :cond_e

    move v9, v2

    :cond_e
    if-lez v9, :cond_f

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    add-int/lit8 v10, v9, -0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v4, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v7, v4

    iput v7, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    goto :goto_7

    :cond_f
    iput v4, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :goto_7
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-lez v9, :cond_10

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_10
    move v9, v2

    :goto_8
    iput v9, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz v8, :cond_11

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    goto :goto_9

    :cond_11
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v3}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    neg-int v3, v3

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v7

    add-int/2addr v7, v3

    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_12
    :goto_9
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    sub-int v4, v6, v4

    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    :goto_a
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {v0, v7, v8, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    add-int/2addr v3, v4

    if-gez v3, :cond_13

    goto :goto_c

    :cond_13
    if-eqz v1, :cond_15

    if-le v6, v3, :cond_14

    neg-int v1, v5

    mul-int/2addr v1, v3

    goto :goto_b

    :cond_14
    move/from16 v1, p1

    goto :goto_b

    :cond_15
    if-le v6, v3, :cond_14

    mul-int v1, v5, v3

    :goto_b
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLastScrollDelta:I

    return v1

    :cond_16
    :goto_c
    return v2
.end method

.method public final handleScrollingSubOrientation(I)I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    if-ne v2, v3, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gez p1, :cond_3

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_3
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int v0, p0, p1

    if-lez v0, :cond_6

    neg-int p0, p0

    return p0

    :cond_4
    if-lez p1, :cond_5

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_5
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int v0, p0, p1

    if-ltz v0, :cond_7

    :cond_6
    return p1

    :cond_7
    neg-int p0, p0

    return p0

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isMainAxisDirectionHorizontal()Z
    .locals 1

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final onAdapterChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    return-void
.end method

.method public final onItemsAdded(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsMoved(II)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsRemoved(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsUpdated(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iput-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v4, :cond_0

    goto/16 :goto_1c

    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v5, :cond_a

    if-eq v5, v6, :cond_7

    if-eq v5, v8, :cond_4

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_1
    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v8, :cond_3

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    :cond_3
    iput-boolean v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_4
    if-ne v4, v6, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v7

    :goto_1
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v8, :cond_6

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    :cond_6
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_7
    if-eq v4, v6, :cond_8

    move v4, v6

    goto :goto_2

    :cond_8
    move v4, v7

    :goto_2
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v8, :cond_9

    move v4, v6

    goto :goto_3

    :cond_9
    move v4, v7

    :goto_3
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_a
    if-ne v4, v6, :cond_b

    move v4, v6

    goto :goto_4

    :cond_b
    move v4, v7

    :goto_4
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v8, :cond_c

    move v4, v6

    goto :goto_5

    :cond_c
    move v4, v7

    :goto_5
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-nez v4, :cond_d

    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iput-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    :cond_d
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/AppFeatures;->ensureMeasureSpecCache(I)V

    invoke-virtual {v4, v3}, Lcom/motorola/camera/AppFeatures;->ensureMeasuredSizeCache(I)V

    invoke-virtual {v4, v3}, Lcom/motorola/camera/AppFeatures;->ensureIndexToFlexLine(I)V

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput-boolean v7, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v5, :cond_e

    iget v8, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v8, :cond_e

    if-ge v8, v3, :cond_e

    iput v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    :cond_e
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget-boolean v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    const/high16 v10, -0x80000000

    const/4 v11, -0x1

    if-eqz v9, :cond_f

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v9, v11, :cond_f

    if-eqz v5, :cond_28

    :cond_f
    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iget-boolean v9, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v9, :cond_1d

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v9, v11, :cond_10

    goto/16 :goto_a

    :cond_10
    if-ltz v9, :cond_1c

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    if-lt v9, v12, :cond_11

    goto/16 :goto_9

    :cond_11
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    iput v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v12, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v12, [I

    aget v9, v12, v9

    iput v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v9, :cond_12

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    iget v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v9, :cond_12

    if-ge v9, v12, :cond_12

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v9

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v6, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    iput v11, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    goto/16 :goto_11

    :cond_12
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v10, :cond_1a

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v12}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    move-result v12

    if-le v9, v12, :cond_13

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    goto/16 :goto_11

    :cond_13
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v12}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v12

    sub-int/2addr v9, v12

    if-gez v9, :cond_14

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v5}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v5

    iput v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v7, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_11

    :cond_14
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v9

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v12, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v9, v12

    if-gez v9, :cond_15

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v5}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v5

    iput v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v6, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_11

    :cond_15
    iget-boolean v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v9, :cond_16

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9}, Landroidx/room/RoomOpenDelegate;->getTotalSpaceChange()I

    move-result v9

    add-int/2addr v9, v5

    goto :goto_7

    :cond_16
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    :goto_7
    iput v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_11

    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_19

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ge v9, v5, :cond_18

    move v5, v6

    goto :goto_8

    :cond_18
    move v5, v7

    :goto_8
    iput-boolean v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :cond_19
    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    goto/16 :goto_11

    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-boolean v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_1b

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v9}, Landroidx/room/RoomOpenDelegate;->getEndPadding()I

    move-result v9

    sub-int/2addr v5, v9

    iput v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_11

    :cond_1b
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v5}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v5

    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v9

    iput v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_11

    :cond_1c
    :goto_9
    iput v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    iput v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :cond_1d
    :goto_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_10

    :cond_1e
    iget-boolean v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_1f

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v5

    goto :goto_b

    :cond_1f
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v5

    :goto_b
    if-eqz v5, :cond_26

    iget-object v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v12, :cond_20

    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    goto :goto_c

    :cond_20
    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    :goto_c
    invoke-virtual {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v13

    if-nez v13, :cond_22

    iget-boolean v13, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v13, :cond_22

    iget-boolean v13, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v13, :cond_21

    invoke-virtual {v12, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v13

    invoke-virtual {v12}, Landroidx/room/RoomOpenDelegate;->getTotalSpaceChange()I

    move-result v12

    add-int/2addr v12, v13

    iput v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_d

    :cond_21
    invoke-virtual {v12, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    iput v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_d

    :cond_22
    iget-boolean v13, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v13, :cond_23

    invoke-virtual {v12, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    invoke-virtual {v12}, Landroidx/room/RoomOpenDelegate;->getTotalSpaceChange()I

    move-result v12

    add-int/2addr v12, v13

    iput v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_d

    :cond_23
    invoke-virtual {v12, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    iput v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_d
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput-boolean v7, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v12, v12, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v12, [I

    if-eq v5, v11, :cond_24

    goto :goto_e

    :cond_24
    move v5, v7

    :goto_e
    aget v5, v12, v5

    if-eq v5, v11, :cond_25

    goto :goto_f

    :cond_25
    move v5, v7

    :goto_f
    iput v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iget-object v5, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-le v5, v12, :cond_27

    iget-object v5, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    iput v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_11

    :cond_26
    :goto_10
    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    iput v7, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput v7, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    :cond_27
    :goto_11
    iput-boolean v6, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    :cond_28
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-boolean v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_29

    invoke-virtual {v0, v8, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    goto :goto_12

    :cond_29
    invoke-virtual {v0, v8, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    :goto_12
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_2c

    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v12, v10, :cond_2a

    if-eq v12, v5, :cond_2a

    move v10, v6

    goto :goto_13

    :cond_2a
    move v10, v7

    :goto_13
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-boolean v6, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v6, :cond_2b

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_14

    :cond_2b
    iget v6, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    :goto_14
    move/from16 v16, v6

    goto :goto_16

    :cond_2c
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v6, v10, :cond_2d

    if-eq v6, v9, :cond_2d

    const/4 v10, 0x1

    goto :goto_15

    :cond_2d
    move v10, v7

    :goto_15
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-boolean v12, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v12, :cond_2e

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_14

    :cond_2e
    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    goto :goto_14

    :goto_16
    iput v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    iput v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    if-ne v5, v11, :cond_32

    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v12, v11, :cond_2f

    if-eqz v10, :cond_32

    :cond_2f
    iget-boolean v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_30

    goto/16 :goto_1a

    :cond_30
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-object v6, v9, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v3

    if-eqz v3, :cond_31

    iget v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v17, 0x0

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    move/from16 v18, v3

    move-object/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    goto :goto_17

    :cond_31
    iget v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v17, 0x0

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    move/from16 v18, v15

    move v15, v14

    move/from16 v14, v18

    move/from16 v18, v3

    move-object/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    move/from16 v20, v15

    move v15, v14

    move/from16 v14, v20

    :goto_17
    iget-object v3, v9, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v4, v14, v15, v7}, Lcom/motorola/camera/AppFeatures;->determineMainSize(III)V

    invoke-virtual {v4, v7}, Lcom/motorola/camera/AppFeatures;->stretchViews(I)V

    iget-object v3, v4, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, [I

    iget v4, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    aget v3, v3, v4

    iput v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    goto/16 :goto_1a

    :cond_32
    if-eq v5, v11, :cond_33

    iget v10, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_18

    :cond_33
    iget v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    :goto_18
    iput-object v6, v9, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_34

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/motorola/camera/AppFeatures;->clearFlexLines(Ljava/util/List;I)V

    iget v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    move/from16 v18, v3

    move/from16 v17, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v12 .. v19}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    goto :goto_19

    :cond_34
    invoke-virtual {v4, v3}, Lcom/motorola/camera/AppFeatures;->ensureIndexToFlexLine(I)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v18, -0x1

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const/16 v17, 0x0

    move-object/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    goto :goto_19

    :cond_35
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_36

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/motorola/camera/AppFeatures;->clearFlexLines(Ljava/util/List;I)V

    iget v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    move/from16 v17, v15

    move v15, v14

    move/from16 v14, v17

    move/from16 v18, v3

    move/from16 v17, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v12 .. v19}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    move v5, v15

    move v15, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_19

    :cond_36
    invoke-virtual {v4, v3}, Lcom/motorola/camera/AppFeatures;->ensureIndexToFlexLine(I)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v18, -0x1

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const/16 v17, 0x0

    move/from16 v19, v15

    move v15, v14

    move/from16 v14, v19

    move-object/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lcom/motorola/camera/AppFeatures;->calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V

    move/from16 v20, v15

    move v15, v14

    move/from16 v14, v20

    :goto_19
    iget-object v3, v9, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v4, v14, v15, v5}, Lcom/motorola/camera/AppFeatures;->determineMainSize(III)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/AppFeatures;->stretchViews(I)V

    :goto_1a
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    iget-boolean v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_37

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    const/4 v4, 0x1

    invoke-virtual {v0, v8, v4, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    goto :goto_1b

    :cond_37
    const/4 v4, 0x1

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v5, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v8, v4, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    :goto_1b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_39

    iget-boolean v6, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_38

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap$1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap$1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    return-void

    :cond_38
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap$1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v0, v3, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap$1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    :cond_39
    :goto_1c
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v2, v1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    return-object v0

    :cond_1
    const/4 p0, -0x1

    iput p0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    return-object v0
.end method

.method public final recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 9

    iget-boolean v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v4

    if-ne v1, v2, :cond_5

    goto/16 :goto_8

    :cond_5
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    move v4, v3

    :goto_0
    if-ltz v4, :cond_a

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    iget v6, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-gt v7, v6, :cond_a

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v8}, Landroidx/room/RoomOpenDelegate;->getEnd()I

    move-result v8

    sub-int/2addr v8, v6

    if-lt v7, v8, :cond_a

    :goto_1
    iget v6, v2, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_9

    if-gtz v1, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    move-object v2, v0

    move v0, v4

    :cond_9
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_a
    :goto_3
    if-lt v3, v0, :cond_18

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/GlProgram;->removeViewAt(I)V

    :cond_b
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_c
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v0, :cond_d

    goto/16 :goto_8

    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_8

    :cond_e
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_f

    goto/16 :goto_8

    :cond_f
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_10

    goto/16 :goto_8

    :cond_10
    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v4

    if-ne v1, v2, :cond_11

    goto/16 :goto_8

    :cond_11
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    :goto_4
    if-ge v3, v0, :cond_16

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_6

    :cond_12
    iget v6, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    if-nez v7, :cond_13

    iget-boolean v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7}, Landroidx/room/RoomOpenDelegate;->getEnd()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v8, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    if-gt v7, v6, :cond_16

    goto :goto_5

    :cond_13
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v7, v5}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-gt v7, v6, :cond_16

    :goto_5
    iget v6, v4, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_15

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_14

    move v2, v3

    goto :goto_7

    :cond_14
    iget v2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    move-object v4, v2

    move v2, v3

    :cond_15
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_16
    :goto_7
    if-ltz v2, :cond_18

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/GlProgram;->removeViewAt(I)V

    :cond_17
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_18
    :goto_8
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/room/RoomOpenDelegate;->offsetChildren(I)V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public final setFlexDirection(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setFlexWrap()V
    .locals 3

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    :goto_0
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final shouldMeasureChild(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    return-void
.end method

.method public final updateDirtyPosition(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/AppFeatures;->ensureMeasureSpecCache(I)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/AppFeatures;->ensureMeasuredSizeCache(I)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/AppFeatures;->ensureIndexToFlexLine(I)V

    iget-object v0, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, [I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getEndPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    return-void
.end method

.method public final updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    :goto_0
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz p3, :cond_1

    if-ne p3, v1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    iput-boolean v0, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput-boolean v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getEndAfterPadding()I

    move-result v0

    iget v3, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v0, v3

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    :goto_2
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iput v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_5

    iget p2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-ltz p2, :cond_5

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p2, p3, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :cond_5
    return-void
.end method

.method public final updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    :goto_0
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz p3, :cond_1

    if-ne p3, v1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    iput-boolean v0, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput-boolean v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v3, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/room/RoomOpenDelegate;

    invoke-virtual {v3}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    :goto_2
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    const/4 v0, -0x1

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz p2, :cond_5

    if-lez v0, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-le p2, p1, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :cond_5
    return-void
.end method

.method public final updateViewCache(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
