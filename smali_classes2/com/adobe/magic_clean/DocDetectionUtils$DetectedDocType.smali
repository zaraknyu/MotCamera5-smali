.class public final enum Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/DocDetectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectedDocType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

.field public static final enum kDetectedDocTypeDocument:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

.field public static final enum kDetectedDocTypeFuzzy:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

.field public static final enum kDetectedDocTypeNone:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

.field public static final enum kDetectedDocTypeNotDocument:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;
    .locals 4

    sget-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNone:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    sget-object v1, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeDocument:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    sget-object v2, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNotDocument:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    sget-object v3, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeFuzzy:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    const-string v1, "kDetectedDocTypeNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNone:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    new-instance v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    const-string v1, "kDetectedDocTypeDocument"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeDocument:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    new-instance v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    const-string v1, "kDetectedDocTypeNotDocument"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNotDocument:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    new-instance v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    const-string v1, "kDetectedDocTypeFuzzy"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeFuzzy:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    invoke-static {}, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->$values()[Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->$VALUES:[Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->$VALUES:[Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    return-object v0
.end method
