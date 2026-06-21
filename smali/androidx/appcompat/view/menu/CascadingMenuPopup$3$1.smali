.class public final Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$item:Ljava/lang/Object;

.field public final synthetic val$menu:Ljava/lang/Object;

.field public final synthetic val$nextInfo:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/common/base/Splitter;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/zzs;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/base/Splitter;

    iget-object v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v4, v2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fsm/Fsm;

    iput-object v3, v4, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    iget-object v3, v4, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;->zzd:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "NA"

    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzc:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzd:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Ljava/lang/String;

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    monitor-exit v5

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    new-instance v7, Landroidx/core/os/LocaleListCompat;

    new-instance v8, Landroidx/core/os/LocaleListPlatformWrapper;

    invoke-direct {v8, v6}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v7, v8}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListPlatformWrapper;)V

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(I)V

    :goto_2
    iget-object v8, v7, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListPlatformWrapper;

    iget-object v8, v8, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    iget-object v8, v7, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListPlatformWrapper;

    iget-object v8, v8, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    sget-object v9, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->zza:Lcom/tinder/StateMachine;

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzcl(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    :goto_3
    iput-object v6, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zze:Ljava/util/AbstractCollection;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzh:Ljava/lang/Boolean;

    iput-object v3, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzd:Ljava/lang/String;

    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzc:Ljava/lang/String;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    :goto_4
    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/String;

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzj:Ljava/lang/Integer;

    iget p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzj:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzk:Ljava/lang/Integer;

    iput-object v4, v2, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwi;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwi;->zza(Lcom/google/common/base/Splitter;)V

    return-void

    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzs;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Ljava/lang/Object;

    check-cast v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    iget-object v3, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
