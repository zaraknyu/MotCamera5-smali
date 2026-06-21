.class public final Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $key:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    instance-of v2, p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->isTenBitVideoMode:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->resetTenBitVideoIfWorking(Z)V

    return-object v0

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->resetTenBitVideoIfWorking(Z)V

    :cond_1
    return-object v0
.end method
