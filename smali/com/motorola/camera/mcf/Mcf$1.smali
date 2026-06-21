.class public final Lcom/motorola/camera/mcf/Mcf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static mMag_values:[F

.field public static final mOri_radians:[F

.field public static final r:[F


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/mcf/Mcf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$1;->mOri_radians:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$1;->mMag_values:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$1;->r:[F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Lcom/motorola/camera/mcf/Mcf;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetsTimebaseDeltaNs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetsTimebaseDeltaNs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smnative_sensor_event(IJ[F)V

    iget-object p0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    sput-object p0, Lcom/motorola/camera/mcf/Mcf$1;->mMag_values:[F

    :cond_1
    iget-object p0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_2

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    sput-object p0, Lcom/motorola/camera/mcf/Mcf;->mAcc_values:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$1;->mMag_values:[F

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$1;->r:[F

    invoke-static {v5, v3, p0, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    sget-object p0, Lcom/motorola/camera/mcf/Mcf$1;->mOri_radians:[F

    invoke-static {v5, p0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->mOri_degrees:[D

    aget v4, p0, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    aput-wide v4, v3, v2

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->mOri_degrees:[D

    aget v4, p0, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->mOri_degrees:[D

    aget p0, p0, v0

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    aput-wide v3, v1, v0

    :cond_2
    iget-object p0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v2

    sput p0, Lcom/motorola/camera/mcf/Mcf;->mLight_value:F

    :cond_3
    iget-object p0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    const v0, 0x1002a

    if-ne p0, v0, :cond_4

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v2

    sput p0, Lcom/motorola/camera/mcf/Mcf;->mLight_value_alt:F

    :cond_4
    return-void
.end method
