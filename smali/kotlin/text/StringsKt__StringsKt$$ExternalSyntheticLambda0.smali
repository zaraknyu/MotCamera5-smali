.class public final synthetic Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/compose/component/ComposeComponent;II)V
    .locals 0

    .line 2
    iput p3, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lkotlinx/coroutines/flow/internal/SafeCollector;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v2, p2

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-interface {v2}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v3

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    sget-object v4, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    if-eq v3, v4, :cond_1

    if-eq v2, v0, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/Job;

    check-cast v2, Lkotlinx/coroutines/Job;

    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    instance-of v4, v2, Lkotlinx/coroutines/internal/ScopeCoroutine;

    if-nez v4, :cond_5

    :goto_1
    if-ne v2, v3, :cond_4

    if-nez v3, :cond_0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expected child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v2, Lkotlinx/coroutines/internal/ScopeCoroutine;

    sget-object v4, Lkotlinx/coroutines/JobSupport;->_parentHandle$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/ChildHandle;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lkotlinx/coroutines/ChildHandle;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v0

    :cond_6
    move-object v2, v0

    goto :goto_0

    :pswitch_0
    check-cast v0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->Draw(ILandroidx/compose/runtime/ComposerImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "view"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/google/android/material/carousel/CarouselLayoutManager$1;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager$1;-><init>(Landroid/content/Context;I)V

    iput v2, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesAdapter:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    if-eq v4, v5, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeChangeTriggered:Z

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    :cond_7
    new-instance v3, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v4, 0x9

    invoke-direct {v3, v2, v4, v0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_9
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent;->Draw(ILandroidx/compose/runtime/ComposerImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->Draw(ILandroidx/compose/runtime/ComposerImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lcom/motorola/camera/PermissionCallback;

    move-object/from16 v1, p1

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    move-object/from16 v2, p2

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    const-string v3, "$this$on"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->TAG:Ljava/lang/String;

    const-string v4, "State_CancelJob: Event_onCancelJob: Cancelling Job"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v3, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    new-instance v6, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    invoke-direct {v6, v3, v4, v2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;-><init>(JLcom/motorola/camera/background/common/TaskId;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5, v6}, Lcom/motorola/camera/PermissionCallback;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object v0

    return-object v0

    :pswitch_5
    check-cast v0, Ljava/util/List;

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "$this$DelimitedRangesSequence"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-ne v2, v5, :cond_c

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v3, v0, v1, v4, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    if-gez v1, :cond_b

    :cond_a
    move-object v2, v7

    goto/16 :goto_8

    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_c
    new-instance v2, Lkotlin/ranges/IntRange;

    if-gez v1, :cond_d

    move v1, v4

    :cond_d
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v2, v1, v4, v5}, Lkotlin/ranges/IntProgression;-><init>(III)V

    instance-of v4, v3, Ljava/lang/String;

    const/4 v13, 0x0

    iget v14, v2, Lkotlin/ranges/IntProgression;->step:I

    iget v15, v2, Lkotlin/ranges/IntProgression;->last:I

    if-eqz v4, :cond_13

    if-lez v14, :cond_e

    if-le v1, v15, :cond_f

    :cond_e
    if-gez v14, :cond_a

    if-gt v15, v1, :cond_a

    :cond_f
    move v9, v1

    :goto_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v8, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsJVMKt;->regionMatches(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_11
    move-object v2, v7

    :goto_5
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_8

    :cond_12
    if-eq v9, v15, :cond_a

    add-int/2addr v9, v14

    goto :goto_4

    :cond_13
    if-lez v14, :cond_14

    if-le v1, v15, :cond_15

    :cond_14
    if-gez v14, :cond_a

    if-gt v15, v1, :cond_a

    :cond_15
    move v4, v1

    :goto_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v13

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_7

    :cond_17
    move-object v9, v7

    :goto_7
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_18
    if-eq v4, v15, :cond_a

    add-int/2addr v4, v14

    goto :goto_6

    :goto_8
    if-eqz v2, :cond_19

    iget-object v0, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    iget-object v1, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-object v7

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
