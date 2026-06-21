.class public abstract Lcom/motorola/camera/CameraInUseBroadcaster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public componentName:Ljava/lang/Object;

.field public permission:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    return-void

    .line 7
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    .line 9
    new-instance p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/SecureCamera$1;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
.end method

.method public abstract following(I)[I
.end method

.method public abstract getApplyableNightMode()I
.end method

.method public getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    iget-object v0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object v1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    iget-object p0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public getRange(II)[I
    .locals 1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "text"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract onChange()V
.end method

.method public abstract preceding(I)[I
.end method

.method public setup()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->cleanup()V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/SecureCamera$1;

    if-nez v1, :cond_1

    new-instance v1, Lcom/motorola/camera/SecureCamera$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
