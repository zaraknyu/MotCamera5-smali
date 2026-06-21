.class public Lcom/google/android/gms/tasks/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;
.implements Lcom/google/android/play/core/splitinstall/testing/zzz;
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;
.implements Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;
.implements Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;


# instance fields
.field public zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    return-void

    .line 3
    :sswitch_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    return-void

    .line 8
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 26
    sget-object v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->Companion:Lcom/google/mlkit/common/internal/zze;

    .line 27
    sget-object v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    if-nez v1, :cond_1

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-class v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    const-string v2, "bgCaptureRecord_table.db"

    .line 32
    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 35
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    .line 36
    sput-object p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 38
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->captureRecordDao()Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    move-result-object p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    .line 39
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzi;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lcom/google/android/play/core/appupdate/zzd;

    invoke-direct {p1, v0, v1}, Lcom/google/android/play/core/appupdate/zzd;-><init>(Lcom/motorola/camera/PermissionCallback;I)V

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    new-instance v1, Landroidx/room/concurrent/FileLock;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0, p1}, Landroidx/room/concurrent/FileLock;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    new-instance v1, Lcom/google/android/play/core/appupdate/zzd;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/play/core/appupdate/zzd;-><init>(Lcom/motorola/camera/PermissionCallback;I)V

    .line 13
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/Result;

    const/16 v3, 0x8

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/tasks/zzs;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    .line 15
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/zzac;)V
    .locals 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/SecureDataHelper;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/tasks/zzs;

    const/16 v3, 0x1d

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    .line 17
    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object p1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    .line 18
    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object v2

    new-instance v3, Landroidx/transition/Transition$1;

    invoke-direct {v3, v0}, Landroidx/transition/Transition$1;-><init>(Lcom/motorola/camera/PermissionCallback;)V

    .line 19
    invoke-static {v3}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object v3

    new-instance v4, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v4, v1, p1, v2, v3}, Landroidx/transition/TransitionValuesMaps;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-static {v4}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/SecureDataHelper;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lcom/google/zxing/Result;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/zxing/Result;-><init>(Lcom/motorola/camera/PermissionCallback;Lcom/google/android/play/core/splitinstall/internal/zzcb;Lcom/google/android/play/core/splitinstall/internal/zzcb;Lcom/motorola/camera/SecureDataHelper;)V

    .line 22
    invoke-static {v4}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object v0

    new-instance v2, Lcom/google/zxing/Result;

    const/16 v3, 0xa

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 23
    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbz;->zzc(Lcom/google/android/play/core/splitinstall/internal/zzcb;)Lcom/google/android/play/core/splitinstall/internal/zzcb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Typeface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    :cond_0
    return-void
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 7

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zze:[Landroid/graphics/Point;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    move v3, v2

    move v4, v3

    move v2, v1

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    aget-object v5, p0, v0

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zze:[Landroid/graphics/Point;

    return-object p0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zza:I

    return p0
.end method

.method public getRawBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzd:[B

    return-object p0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public getValueType()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzf:I

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-static {p1}, Lcom/motorola/camera/ui/UIManager;->getCameraType(Landroid/view/MotionEvent;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/ui/UIManager;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mViewDownEventHandled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p1, p1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ON_DOWN"

    iget-wide v3, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "ENABLE"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v0, "LOCATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TOUCH_DOWN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onEmptySpaceTap(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;Ljava/nio/ByteBuffer;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireNextImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, v0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->-$$Nest$smonImage(Ljava/lang/String;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireNextImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "ImageCaptureManager"

    const-string p2, "onImage"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    instance-of v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->mAnimationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v0, 0x3e8

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-static {p0, v0, p1, v1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onItemLongPress(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 7

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    if-eq p2, v2, :cond_5

    const/16 v2, 0x12

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    monitor-enter p2

    :try_start_0
    iget-object v2, p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->mAnimationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    const/4 v5, 0x0

    invoke-direct {p2, v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->beginEdit()V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object p2, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public onItemTouchDown(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 2

    instance-of v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mContinuousTextures:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemTouchUp(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CAPTURE_TRIGGER"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "LOCATION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchLongPress(Landroid/os/Bundle;)V

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    const-string v0, "ENABLE"

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    invoke-static {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v3, 0x3

    const-string v4, "ORIENTATION"

    if-ne p1, v3, :cond_3

    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    invoke-static {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    invoke-static {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_0
    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    return-void
.end method

.method public perform(Landroid/view/View;)Z
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p0, v2, :cond_3

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    neg-int p0, p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return v2

    :cond_4
    return v1
.end method

.method public resolveClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 4

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;

    :cond_0
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/zzb;->resolveClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_JAVA_LOADER:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v2

    :goto_2
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz p1, :cond_6

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-object p0

    :cond_4
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;->getPackageFragment(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;->scope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/JvmPackageScope;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/JvmPackageScope;->javaScope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->findClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    return-object v2
.end method

.method public visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p2, [I

    if-eqz p1, :cond_2

    check-cast p2, [I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->metadataVersionArray:[I

    return-void

    :cond_0
    const-string v0, "multifileClassName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraString:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    .locals 1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "filePartClassNames"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "strings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1;-><init>(Lcom/google/android/gms/tasks/zzb;I)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1;-><init>(Lcom/google/android/gms/tasks/zzb;I)V

    return-object p1
.end method

.method public visitClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 0

    return-void
.end method

.method public visitConstructorDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/zzb;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 0

    return-void
.end method

.method public visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/Unit;

    new-instance p2, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)V

    return-object p2
.end method

.method public visitModuleDeclaration(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitPackageFragmentDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitPackageViewDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitPropertyDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Lkotlin/Unit;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->extensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr p2, v0

    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isVar:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_5

    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    :cond_2
    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    :cond_4
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-ne p2, v2, :cond_5

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty2Impl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    :cond_5
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported property: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2

    :cond_7
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty0Impl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    return-object p2
.end method

.method public visitPropertyGetterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/zzb;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public visitPropertySetterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/zzb;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public visitReceiverParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitTypeAliasDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitTypeParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitValueParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PermissionCallback;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/zzac;

    .line 2
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzac;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "local_testing_dir"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/File;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public zza()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;

    .line 7
    new-instance v0, Lcom/motorola/camera/SecureDataHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v1, "split-install-errors"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzz;)V

    return-void
.end method
