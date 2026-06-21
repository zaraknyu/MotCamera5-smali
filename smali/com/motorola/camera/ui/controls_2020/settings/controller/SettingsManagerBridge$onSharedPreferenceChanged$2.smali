.class public final Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $key:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final synthetic $result:Lkotlinx/coroutines/DeferredCoroutine;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/DeferredCoroutine;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/DeferredCoroutine;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;-><init>(Lkotlinx/coroutines/DeferredCoroutine;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->label:I

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

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/DeferredCoroutine;

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/motorola/camera/settings/Setting;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    instance-of v3, v2, Landroid/util/Size;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->Companion:Landroidx/collection/internal/Lock;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v6, v2, v4

    iget-object v7, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_11

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    if-eqz p1, :cond_6

    iget-object v5, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_7

    :cond_7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v3, 0x1a

    invoke-direct {v2, v3, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_8
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_d

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->Companion:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge v4, v3, :cond_a

    aget-object v6, v2, v4

    iget-object v7, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_11

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    if-eqz p1, :cond_b

    iget-object v5, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    :cond_b
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_d
    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v2

    array-length v3, v2

    :goto_5
    if-ge v4, v3, :cond_f

    aget-object v6, v2, v4

    iget-object v7, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    move-object v6, v5

    :goto_6
    if-eqz v6, :cond_11

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_10

    iget-boolean v0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_10
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v3, 0x1c

    invoke-direct {v2, v3, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_11
    :goto_7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/DeferredCoroutine;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
