.class public final Lcom/motorola/camera/analytics/CameraSwitchEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final DESTCAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final DESTMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final SRCCAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final SRCMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final SWITCHTIME:Lcom/google/android/gms/common/internal/zzv;

.field public static final SWITCHTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final SWITCH_CASE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final sSwitchTypeMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "SWITCHTIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SWITCHTIME:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "SWITCHTRIGGER"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SWITCHTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "SRCCAM"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SRCCAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "SRCMODE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SRCMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "DESTCAM"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->DESTCAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "DESTMODE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->DESTMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "SWTCASE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SWITCH_CASE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v3, "TOUCH"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "GSTR"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "AOV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 4

    check-cast p3, Landroid/os/Bundle;

    const-string p0, "SRC_CAM"

    const/4 v0, -0x1

    invoke-virtual {p3, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SRCCAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const-string p0, "SRC_MODE"

    invoke-virtual {p3, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SRCMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const-string p0, "DEST_CAM"

    invoke-virtual {p3, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/analytics/CameraSwitchEvent;->DESTCAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const-string p0, "DEST_MODE"

    invoke-virtual {p3, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->DESTMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v0, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const-string p0, "SWITCH_CASE"

    const-class v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {p3, p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-nez p0, :cond_0

    const-string p0, "SAME_MODE_CASE"

    goto :goto_0

    :cond_0
    const-string v0, "ANALYTICS_SCENE_TYPE"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "PILL_CASE"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SWITCH_CASE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p0, "SWITCHTIME"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SWITCHTIME:Lcom/google/android/gms/common/internal/zzv;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    const-string v0, "SWITCH_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->sSwitchTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;->SWITCHTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v0, p3, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "SWITCHTRIGGER"

    invoke-virtual {p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final getEventType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.8"

    return-object p0
.end method
