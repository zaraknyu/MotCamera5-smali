.class public final Lcom/google/android/material/button/MaterialButtonToggleGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager/widget/ViewPager$1;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    if-eqz p1, :cond_2

    iget-wide p0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_2
    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_1
    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    iget p0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    iget p1, p2, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_2
    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object p0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object p1, p2, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p0, p1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :goto_3
    return p0

    :pswitch_4
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v0, p1, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p2, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
