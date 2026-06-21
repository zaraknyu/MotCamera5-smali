.class public final enum Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public static final enum kCameraResultDocBDIssues:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public static final enum kCameraResultDocIsStraight:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public static final enum kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public static final enum kCameraResultOutOfMemory:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public static final enum kCameraResultPartialSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public static final enum kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public static final enum kCameraResultUnknownFailure:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 7

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultPartialSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultOutOfMemory:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultUnknownFailure:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    sget-object v4, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    sget-object v5, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultDocBDIssues:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    sget-object v6, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultDocIsStraight:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    filled-new-array/range {v0 .. v6}, [Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const-string v1, "kCameraResultSuccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const-string v1, "kCameraResultPartialSuccess"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultPartialSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const-string v1, "kCameraResultOutOfMemory"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultOutOfMemory:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const-string v1, "kCameraResultUnknownFailure"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultUnknownFailure:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const-string v1, "kCameraResultInvalidParameter"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultInvalidParameter:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const-string v1, "kCameraResultDocBDIssues"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultDocBDIssues:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const-string v1, "kCameraResultDocIsStraight"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultDocIsStraight:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->$values()[Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    return-object v0
.end method
