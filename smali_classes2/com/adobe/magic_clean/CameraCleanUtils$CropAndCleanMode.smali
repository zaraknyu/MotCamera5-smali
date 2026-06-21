.class public final enum Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropAndCleanMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

.field public static final enum kCropAndCleanModeDefault:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

.field public static final enum kCropAndCleanModeOverride:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;
    .locals 2

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->kCropAndCleanModeDefault:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->kCropAndCleanModeOverride:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    filled-new-array {v0, v1}, [Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    const-string v1, "kCropAndCleanModeDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->kCropAndCleanModeDefault:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    const-string v1, "kCropAndCleanModeOverride"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->kCropAndCleanModeOverride:Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->$values()[Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanUtils$CropAndCleanMode;

    return-object v0
.end method
