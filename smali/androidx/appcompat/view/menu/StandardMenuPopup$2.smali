.class public final Landroidx/appcompat/view/menu/StandardMenuPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onViewAttachedToWindow$androidx$appcompat$view$menu$CascadingMenuPopup$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final onViewAttachedToWindow$androidx$appcompat$view$menu$StandardMenuPopup$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final onViewAttachedToWindow$androidx$compose$ui$platform$ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final onViewAttachedToWindow$androidx$compose$ui$platform$WindowRecomposerPolicy$createAndInstallWindowRecomposer$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->$r8$classId:I

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->touchExplorationStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    sget-object v0, Landroidx/core/view/ViewKt$ancestors$1;->INSTANCE:Landroidx/core/view/ViewKt$ancestors$1;

    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewParent;

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a0273

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    :cond_5
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->touchExplorationStateListener:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_6
    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_8
    iget-object v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_9
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
