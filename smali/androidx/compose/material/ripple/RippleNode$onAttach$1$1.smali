.class public final Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$launch:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;-><init>(Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object p0, p2

    :goto_1
    const/4 p2, 0x0

    .line 3
    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    .line 4
    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object v1

    .line 5
    :pswitch_0
    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_6

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    goto :goto_4

    :cond_6
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;-><init>(Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_4
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    if-ne v2, v3, :cond_7

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$1:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$0:Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$0:Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_a

    .line 7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    return-object v1

    .line 8
    :cond_a
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    throw p1

    .line 10
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->emit(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_2
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 12
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p2, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/WorkSpec;

    invoke-interface {p2, p0, p1}, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;->onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 14
    :pswitch_3
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 15
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v0, :cond_c

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 16
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz p0, :cond_b

    goto :goto_7

    .line 17
    :cond_b
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->view:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/compose/material/ripple/Ripple_androidKt;->access$createAndAttachRippleContainerIfNeeded(Landroid/view/ViewGroup;)Landroidx/compose/material/ripple/RippleContainer;

    move-result-object p0

    iput-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 18
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    :goto_7
    invoke-virtual {p0, p2}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/RippleHostKey;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v1

    .line 20
    iget-boolean v3, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    .line 21
    iget-wide v4, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    .line 22
    iget v6, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 23
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 24
    iget-wide v7, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 25
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 26
    iget v9, p0, Landroidx/compose/material/ripple/RippleAlpha;->pressedAlpha:F

    .line 27
    iget-object v10, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->onInvalidateRipple:Landroidx/compose/runtime/Pending$keyMap$2;

    .line 28
    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V

    .line 29
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 30
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    .line 31
    :cond_c
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz v0, :cond_d

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 32
    iget-object p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 33
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 34
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz p0, :cond_f

    .line 35
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    goto :goto_8

    .line 36
    :cond_d
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz v0, :cond_e

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 37
    iget-object p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 38
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 39
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz p0, :cond_f

    .line 40
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    goto :goto_8

    .line 41
    :cond_e
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 42
    iget-object p2, p2, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    .line 43
    invoke-virtual {p2, p1, p0}, Landroidx/compose/material/ripple/StateLayer;->handleInteraction$material_ripple_release(Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V

    .line 44
    :cond_f
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 45
    :pswitch_4
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 46
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableObjectList;

    .line 47
    instance-of v0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_9

    .line 48
    :cond_10
    instance-of v0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    :goto_9
    if-eqz v0, :cond_11

    goto :goto_a

    .line 49
    :cond_11
    instance-of v1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    :goto_a
    if-eqz v1, :cond_12

    .line 50
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    goto :goto_b

    .line 51
    :cond_12
    instance-of v0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    if-eqz v0, :cond_13

    check-cast p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 52
    iget-object p1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 53
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 54
    :cond_13
    instance-of v0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz v0, :cond_14

    check-cast p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 55
    iget-object p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 56
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 57
    :cond_14
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz v0, :cond_15

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 58
    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 59
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 60
    :cond_15
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz v0, :cond_16

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 61
    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 62
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_16
    :goto_b
    iget-object p1, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 64
    iget p0, p0, Landroidx/collection/MutableObjectList;->_size:I

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v0, p0, :cond_1a

    .line 65
    aget-object v2, p1, v0

    check-cast v2, Landroidx/compose/foundation/interaction/Interaction;

    .line 66
    instance-of v3, v2, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v3, :cond_17

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 68
    :cond_17
    instance-of v3, v2, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v3, :cond_18

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 70
    :cond_18
    instance-of v2, v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v2, :cond_19

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v1, 0x4

    :cond_19
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 72
    :cond_1a
    iget-object p0, p2, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 73
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 75
    :pswitch_5
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 76
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/material/ripple/AndroidRippleNode;

    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction;

    if-eqz v0, :cond_1c

    .line 77
    iget-boolean p0, p2, Landroidx/compose/material/ripple/AndroidRippleNode;->hasValidSize:Z

    if-eqz p0, :cond_1b

    .line 78
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 79
    invoke-virtual {p2, p1}, Landroidx/compose/material/ripple/AndroidRippleNode;->handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V

    goto :goto_e

    .line 80
    :cond_1b
    iget-object p0, p2, Landroidx/compose/material/ripple/AndroidRippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    .line 81
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    goto :goto_e

    .line 82
    :cond_1c
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 83
    iget-object v0, p2, Landroidx/compose/material/ripple/AndroidRippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    if-nez v0, :cond_1d

    .line 84
    new-instance v0, Landroidx/compose/material/ripple/StateLayer;

    iget-boolean v1, p2, Landroidx/compose/material/ripple/AndroidRippleNode;->bounded:Z

    iget-object v2, p2, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleAlpha:Lkotlin/jvm/internal/Lambda;

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ripple/StateLayer;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 85
    invoke-static {p2}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 86
    iput-object v0, p2, Landroidx/compose/material/ripple/AndroidRippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    .line 87
    :cond_1d
    invoke-virtual {v0, p1, p0}, Landroidx/compose/material/ripple/StateLayer;->handleInteraction$material_ripple_release(Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V

    .line 88
    :goto_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emit(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;

    iget v3, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;-><init>(Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 89
    iget v4, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->label:I

    const/4 v5, 0x6

    const/16 v6, 0xc8

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-ne v4, v8, :cond_2

    iget v0, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$1:I

    iget v4, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$0:I

    iget-object v11, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->L$0:Landroidx/compose/animation/core/Animatable;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v2

    :cond_1
    move v1, v4

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$1:I

    iget v4, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$0:I

    iget-object v11, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->L$0:Landroidx/compose/animation/core/Animatable;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v2

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    iget-object v1, v0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 91
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 92
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    move-object/from16 v4, p1

    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    iget-object v0, v0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/Animatable;

    move-object v11, v0

    move-object v15, v2

    move v0, v7

    move v1, v8

    :goto_1
    if-ge v0, v1, :cond_6

    .line 95
    new-instance v12, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Ljava/lang/Float;-><init>(F)V

    .line 96
    invoke-static {v6, v7, v10, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v13

    iput-object v11, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->L$0:Landroidx/compose/animation/core/Animatable;

    iput v1, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$0:I

    iput v0, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$1:I

    iput v9, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->label:I

    const/4 v14, 0x0

    const/16 v16, 0xc

    invoke-static/range {v11 .. v16}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    .line 97
    :goto_2
    new-instance v12, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v12, v1}, Ljava/lang/Float;-><init>(F)V

    .line 98
    invoke-static {v6, v7, v10, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v13

    iput-object v11, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->L$0:Landroidx/compose/animation/core/Animatable;

    iput v4, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$0:I

    iput v0, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->I$1:I

    iput v8, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1$1$emit$1;->label:I

    const/4 v14, 0x0

    const/16 v16, 0xc

    invoke-static/range {v11 .. v16}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    :goto_3
    return-object v3

    :goto_4
    add-int/2addr v0, v9

    goto :goto_1

    .line 99
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
