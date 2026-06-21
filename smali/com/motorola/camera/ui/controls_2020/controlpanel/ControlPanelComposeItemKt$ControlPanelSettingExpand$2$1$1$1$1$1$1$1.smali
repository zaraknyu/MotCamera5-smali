.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animDuration:I

.field public final synthetic $index:I

.field public final synthetic $item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

.field public final synthetic $viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

.field public label:I


# direct methods
.method public constructor <init>(ILcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$animDuration:I

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$index:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$index:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$animDuration:I

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;-><init>(ILcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$animDuration:I

    int-to-long v3, p1

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/Integer;

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$index:I

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->onClickSetting(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
