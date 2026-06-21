.class public abstract Landroidx/activity/compose/ComponentActivityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultActivityContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Landroidx/activity/compose/ComponentActivityKt;->DefaultActivityContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public static setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/ui/platform/ComposeView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_1
    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v2, v1}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p1, p0}, Landroidx/lifecycle/LifecycleKt;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    :cond_2
    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p1, p0}, Landroidx/lifecycle/LifecycleKt;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    :cond_3
    invoke-static {p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {p1, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    :cond_4
    sget-object p1, Landroidx/activity/compose/ComponentActivityKt;->DefaultActivityContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
