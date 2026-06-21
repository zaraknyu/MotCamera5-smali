.class public final enum Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

.field public static final enum kDeviceOrientationLandscape:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

.field public static final enum kDeviceOrientationPortrait:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;
    .locals 2

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->kDeviceOrientationPortrait:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->kDeviceOrientationLandscape:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    filled-new-array {v0, v1}, [Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    const-string v1, "kDeviceOrientationPortrait"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->kDeviceOrientationPortrait:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    const-string v1, "kDeviceOrientationLandscape"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->kDeviceOrientationLandscape:Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->$values()[Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanUtils$DeviceOrientation;

    return-object v0
.end method
