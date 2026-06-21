.class public final Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

.field public job:Lkotlinx/coroutines/JobImpl;

.field public final resultList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/JobImpl;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKeyNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p2, v0, v2}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/JobImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;

    invoke-direct {v3, p2, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;-><init>(Lkotlinx/coroutines/DeferredCoroutine;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v2, v1, v3, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
