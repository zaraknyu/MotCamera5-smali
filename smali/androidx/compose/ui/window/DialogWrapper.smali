.class public final Landroidx/compose/ui/window/DialogWrapper;
.super Landroidx/activity/ComponentDialog;
.source "SourceFile"


# instance fields
.field public final composeView:Landroid/view/View;

.field public final dialogLayout:Landroidx/compose/ui/window/DialogLayout;

.field public onDismissRequest:Lkotlin/jvm/functions/Function0;

.field public properties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V
    .locals 4

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p2, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    if-eqz v2, :cond_0

    const v2, 0x7f130171

    goto :goto_0

    :cond_0
    const v2, 0x7f13019d

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    iput-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    const/16 p1, 0x8

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    iget-boolean v0, v0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    invoke-virtual {p2, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    new-instance v0, Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroidx/compose/ui/window/DialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dialog:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const v2, 0x7f0a00fb

    invoke-virtual {v0, v2, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-interface {p5, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    new-instance p1, Landroidx/compose/ui/window/DialogWrapper$1$2;

    const/4 p5, 0x0

    invoke-direct {p1, p5}, Landroidx/compose/ui/window/DialogWrapper$1$2;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iput-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentDialog;->setContentView(Landroid/view/View;)V

    invoke-static {p3}, Landroidx/lifecycle/LifecycleKt;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/LifecycleKt;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {p3}, Landroidx/lifecycle/LifecycleKt;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/LifecycleKt;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-static {p3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    iget-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {p0, p1, p2, p4}, Landroidx/compose/ui/window/DialogWrapper;->updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    iget-object p1, p0, Landroidx/activity/ComponentDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    new-instance p2, Landroidx/compose/ui/window/DialogWrapper$2;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroidx/compose/ui/window/DialogWrapper$2;-><init>(Landroidx/compose/ui/window/DialogWrapper;I)V

    const-string p3, "<this>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroidx/fragment/app/FragmentManager$1;

    invoke-direct {p3, p2}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/compose/ui/window/DialogWrapper$2;)V

    invoke-virtual {p1, p0, p3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentManager$1;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dialog has no window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final _init_$disableClipping(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    instance-of v1, p0, Landroidx/compose/ui/window/DialogLayout;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    iget-boolean v0, v0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    iget-boolean v1, v1, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    if-gt v4, v2, :cond_1

    if-gt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    if-gt v5, p1, :cond_1

    if-gt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 6

    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    iget-object p1, p2, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    sget v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->$r8$clinit:I

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x2000

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    const/16 v0, -0x2001

    :goto_3
    invoke-virtual {p1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    if-ne p1, v1, :cond_6

    move p1, v1

    goto :goto_4

    :cond_6
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_7
    move p1, v3

    :goto_4
    iget-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-boolean p1, p2, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    iget-boolean v0, p2, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    iget-object v2, p3, Landroidx/compose/ui/window/DialogLayout;->window:Landroid/view/Window;

    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->hasCalledSetLayout:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->usePlatformDefaultWidth:Z

    if-ne v0, v4, :cond_9

    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    if-eq p1, v4, :cond_8

    goto :goto_5

    :cond_8
    move v4, v3

    goto :goto_6

    :cond_9
    :goto_5
    move v4, v1

    :goto_6
    iput-boolean v0, p3, Landroidx/compose/ui/window/DialogLayout;->usePlatformDefaultWidth:Z

    iput-boolean p1, p3, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    if-eqz v0, :cond_a

    move v0, v5

    goto :goto_7

    :cond_a
    const/4 v0, -0x1

    :goto_7
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v4, :cond_b

    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->hasCalledSetLayout:Z

    if-nez v4, :cond_c

    :cond_b
    invoke-virtual {v2, v0, v5}, Landroid/view/Window;->setLayout(II)V

    iput-boolean v1, p3, Landroidx/compose/ui/window/DialogLayout;->hasCalledSetLayout:Z

    :cond_c
    iget-boolean p2, p2, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_e

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    const/16 v3, 0x30

    :goto_8
    invoke-virtual {p0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_e
    return-void
.end method
