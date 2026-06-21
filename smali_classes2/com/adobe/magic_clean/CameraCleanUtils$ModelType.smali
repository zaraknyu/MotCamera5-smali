.class public final enum Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

.field public static final enum kModelTypeBD:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

.field public static final enum kModelTypeDC:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

.field public static final enum kModelTypeDD:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

.field public static final enum kModelTypeEnd:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

.field public static final enum kModelTypeSR:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;
    .locals 5

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeBD:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeDC:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeDD:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeSR:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    sget-object v4, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeEnd:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    const-string v1, "kModelTypeBD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeBD:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    const-string v1, "kModelTypeDC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeDC:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    const-string v1, "kModelTypeDD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeDD:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    const-string v1, "kModelTypeSR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeSR:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    const-string v1, "kModelTypeEnd"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->kModelTypeEnd:Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->$values()[Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanUtils$ModelType;

    return-object v0
.end method
