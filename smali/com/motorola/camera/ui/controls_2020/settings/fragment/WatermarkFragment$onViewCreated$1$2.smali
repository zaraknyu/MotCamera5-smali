.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment$onViewCreated$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->access$getWatermarkPreviewPagerView$p(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewPagerView;->notifyAdapterDataSetChanged()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string/jumbo p0, "watermarkPreviewPagerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
