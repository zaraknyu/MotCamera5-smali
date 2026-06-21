.class public final enum Lcom/motorola/camera/device/CameraStateManager$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

.field public static final enum UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    new-instance v1, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v2, "CLOSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    new-instance v2, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v3, "CLOSING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

    new-instance v3, Lcom/motorola/camera/device/CameraStateManager$Status;

    const-string v4, "UNUSED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->$VALUES:[Lcom/motorola/camera/device/CameraStateManager$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;
    .locals 1

    const-class v0, Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/device/CameraStateManager$Status;
    .locals 1

    sget-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->$VALUES:[Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0}, [Lcom/motorola/camera/device/CameraStateManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/device/CameraStateManager$Status;

    return-object v0
.end method
