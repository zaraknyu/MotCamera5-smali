.class public final Lcom/motorola/camera/analytics/UserExitAppEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final APP_TIME:Lcom/google/android/gms/common/internal/zzv;

.field public static final AUTO_ENHANCE_OPTION_CHANGED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final AUTO_ENHANCE_THIRD_LAUNCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final CAPTURED_PICS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final CAPTURED_VIDS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final CONTROL_BAR_TAPS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final CONTROL_PANEL_TAPS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final GROUP_SHOT_DISMISS_COUNTER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final HELP_LAUNCHED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final KEEP_LAST_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final LENS_STATUS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final MCF_QUEUE_SIZE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

.field public static final MODE_LAUNCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final MODE_SUM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final SETTINGS_OPENED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final VIDEO_DV_TUTORIAL_SELECTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ZOOM_PINCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ZOOM_SCROLL:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "EXITTYP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "APPTIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ERRTYP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "SETTINGSLAUNCH"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "NUMPIC"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "NUMVID"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "LENSSTAT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "OUTQUSIZ"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "PINCHZOOM"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "SCROLLZOOM"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "HELPLAUNCH"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/mlkit/common/internal/zzc;

    const-string v1, "MODEADD"

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zzc;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/mlkit/common/internal/zzc;

    const-string v1, "MODEREMOVE"

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zzc;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "MODELAUNCH"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "MODESUM"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "MODETUT"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "KLMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->KEEP_LAST_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "CTRLBAR"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_BAR_TAPS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "CTRLPNL"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_PANEL_TAPS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VDVTUTSL"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->VIDEO_DV_TUTORIAL_SELECTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AETRDLC"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->AUTO_ENHANCE_THIRD_LAUNCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AECHNGD"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->AUTO_ENHANCE_OPTION_CHANGED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "GPSHTDIS"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->GROUP_SHOT_DISMISS_COUNTER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "EXITTYP"

    iget-object v0, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    check-cast p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ERRTYP"

    invoke-virtual {p1, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    :cond_0
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/google/android/gms/common/internal/zzv;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "APPTIME"

    invoke-virtual {p1, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v4, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    const-wide/32 v4, 0x1499700

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    const-string v1, "ERRTYP"

    invoke-virtual {p1, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    if-nez p3, :cond_2

    const-string p3, "MISC"

    goto :goto_1

    :cond_2
    iget-object p3, p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    const-string p0, "MODEADD"

    iget-object p3, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p3, [B

    monitor-enter p3

    :try_start_1
    iget-object v0, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "MODEADD"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    const-string p0, "MODEREMOVE"

    iget-object p3, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, [B

    monitor-enter v0

    :try_start_2
    iget-object p3, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "MODEREMOVE"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "TUTORIAL_OPENED_MODE_LIST"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_BAR_TAPS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_CONTROL_BAR_TAPS"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_PANEL_TAPS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_CONTROL_PANEL_TAPS"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "LENSSTAT"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    goto :goto_2

    :cond_5
    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    :goto_2
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->KEEP_LAST_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->VIDEO_DV_TUTORIAL_SELECTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_VIDEO_DV_TUTORIAL_ALIGNMENT"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->AUTO_ENHANCE_THIRD_LAUNCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_AUTO_ENHANCE_THIRD_LAUNCH"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->AUTO_ENHANCE_OPTION_CHANGED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_AUTO_ENHANCE_OPTION_CHANGED"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const-string p0, "ANALYTICS_AI_GROUP_SHOT_DISMISS_COUNTER"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_6

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->GROUP_SHOT_DISMISS_COUNTER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final getEventType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "4.1"

    return-object p0
.end method
