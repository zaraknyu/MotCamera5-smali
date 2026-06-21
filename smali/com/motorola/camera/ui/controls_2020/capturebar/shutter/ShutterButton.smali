.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u001a\u001bJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R*\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u0006\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;",
        "shutterState",
        "",
        "setLottieComposition",
        "(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V",
        "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;",
        "onCancelPendingInputEventsListener",
        "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;",
        "getOnCancelPendingInputEventsListener",
        "()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;",
        "setOnCancelPendingInputEventsListener",
        "(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;)V",
        "",
        "hasFixedDurationAnimate",
        "Z",
        "getHasFixedDurationAnimate",
        "()Z",
        "setHasFixedDurationAnimate",
        "(Z)V",
        "newState",
        "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;",
        "getShutterState",
        "()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;",
        "setShutterState",
        "ShutterState",
        "OnCancelPendingInputEventsListener",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final animateResMap:Ljava/util/HashMap;

.field public hasFixedDurationAnimate:Z

.field public onCancelPendingInputEventsListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;

.field public shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->animateResMap:Ljava/util/HashMap;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-void
.end method


# virtual methods
.method public final getHasFixedDurationAnimate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->hasFixedDurationAnimate:Z

    return p0
.end method

.method public final getOnCancelPendingInputEventsListener()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->onCancelPendingInputEventsListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;

    return-object p0
.end method

.method public final getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0
.end method

.method public final loadResources()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->animateResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->backgroundRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setLottieComposition(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    return-void
.end method

.method public final onCancelPendingInputEvents()V
    .locals 11

    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->onCancelPendingInputEventsListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v2 .. v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    :cond_2
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12057a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12057b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12057c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final setHasFixedDurationAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->hasFixedDurationAnimate:Z

    return-void
.end method

.method public final setLottieComposition(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V
    .locals 1

    const-string/jumbo v0, "shutterState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->animateResMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060483

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setOnCancelPendingInputEventsListener(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->onCancelPendingInputEventsListener:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;

    return-void
.end method

.method public final setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V
    .locals 2

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->splashDrawableRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->backgroundRes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->backgroundRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->lottieJsonRes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->lottieJsonRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-void

    :cond_2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->loadResources()V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, p0, p0, v0}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->hasFixedDurationAnimate:Z

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call this method from UI thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
