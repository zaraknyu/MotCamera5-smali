.class public final Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollableNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v0, v2

    :goto_0
    cmpg-float v0, v0, v2

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move v0, v2

    :goto_1
    cmpg-float v0, v0, v2

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move v0, v2

    :goto_2
    cmpg-float v0, v0, v2

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move p0, v2

    :goto_3
    cmpg-float p0, p0, v2

    if-nez p0, :cond_4

    :cond_3
    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    move p0, v1

    :goto_4
    xor-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz p0, :cond_5

    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
