.class public final Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $block$inlined:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;->$block$inlined:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;->$block$inlined:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isFirstDraw:Z

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$1$1$1$1;

    check-cast v2, Landroidx/compose/animation/core/Animatable;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$1$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :pswitch_0
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    check-cast v2, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void

    :pswitch_2
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->previouslyComposedKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, v2}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    check-cast v2, Landroid/view/View;

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->insetsListener:Landroidx/compose/foundation/layout/InsetsListener;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void

    :pswitch_5
    check-cast p0, Landroidx/compose/animation/core/Transition;

    check-cast v2, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    check-cast p0, Landroidx/compose/animation/core/Transition;

    check-cast v2, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_7
    check-cast p0, Landroidx/compose/animation/core/Transition;

    check-cast v2, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_8
    check-cast p0, Landroidx/compose/animation/core/InfiniteTransition;

    check-cast v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    check-cast p0, Landroidx/compose/foundation/text/TextLinkScope;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope;->annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
