.class public final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    iget p0, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/CameraData;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lcom/motorola/camera/CameraData;

    invoke-virtual {p2}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lkotlin/Pair;

    iget-object p0, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    iget-wide p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lkotlin/Pair;

    iget-object p1, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    iget-wide p1, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    check-cast p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    if-eqz p2, :cond_1

    iget p0, p2, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :pswitch_4
    check-cast p1, [I

    check-cast p2, [I

    aget p0, p1, v2

    aget p1, p2, v2

    sub-int/2addr p0, p1

    return p0

    :pswitch_5
    check-cast p1, Landroidx/room/util/TableInfo$Index;

    iget-object p0, p1, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    check-cast p2, Landroidx/room/util/TableInfo$Index;

    iget-object p1, p2, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    iget-object p0, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    check-cast p2, Landroidx/room/util/TableInfo$Column;

    iget-object p1, p2, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object v4, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eq v3, v4, :cond_4

    if-nez p0, :cond_5

    goto :goto_3

    :cond_4
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    iget-boolean v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    if-eq p0, v3, :cond_6

    if-eqz p0, :cond_9

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iget v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    sub-int v0, p0, v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    sub-int v0, p0, p1

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v2

    :cond_9
    :goto_3
    return v0

    :pswitch_a
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_b
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    move-result p0

    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    cmpg-float p0, p0, p1

    if-gez p0, :cond_b

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_4
    return v0

    :pswitch_c
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    check-cast p2, Landroidx/constraintlayout/core/SolverVariable;

    iget p0, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_d
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget p0, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget p1, p2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget p0, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget p1, p2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget p0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget p1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
