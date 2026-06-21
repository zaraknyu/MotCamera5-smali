.class public final enum Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

.field public static final enum kCaptureTypeLive:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

.field public static final enum kCaptureTypePost:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;
    .locals 2

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->kCaptureTypeLive:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->kCaptureTypePost:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    filled-new-array {v0, v1}, [Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    const-string v1, "kCaptureTypeLive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->kCaptureTypeLive:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    const-string v1, "kCaptureTypePost"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->kCaptureTypePost:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->$values()[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    return-object v0
.end method
