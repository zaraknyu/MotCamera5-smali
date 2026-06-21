.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

.field public final synthetic $scale:Landroidx/compose/animation/core/Animatable;

.field public final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$scale:Landroidx/compose/animation/core/Animatable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$scale:Landroidx/compose/animation/core/Animatable;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$scale:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
