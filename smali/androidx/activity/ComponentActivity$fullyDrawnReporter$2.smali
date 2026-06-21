.class public final Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->this$0:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {v1, p0, v2}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/ComponentActivity;I)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v2, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_0
    return-object v0

    :pswitch_0
    iget-object p0, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    iget-object p0, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_2
    new-instance v0, Landroidx/activity/FullyDrawnReporter;

    iget-object p0, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->this$0:Landroidx/activity/ComponentActivity;

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    new-instance v2, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;-><init>(Landroidx/activity/ComponentActivity;I)V

    invoke-direct {v0, v1, v2}, Landroidx/activity/FullyDrawnReporter;-><init>(Ljava/util/concurrent/Executor;Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
