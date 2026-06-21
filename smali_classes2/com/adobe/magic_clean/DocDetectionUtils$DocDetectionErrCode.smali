.class public final enum Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/DocDetectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocDetectionErrCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

.field public static final enum kDocDetectionErrCodeFailure:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

.field public static final enum kDocDetectionErrCodeSuccess:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;
    .locals 2

    sget-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->kDocDetectionErrCodeSuccess:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    sget-object v1, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->kDocDetectionErrCodeFailure:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    filled-new-array {v0, v1}, [Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    const-string v1, "kDocDetectionErrCodeSuccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->kDocDetectionErrCodeSuccess:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    new-instance v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    const-string v1, "kDocDetectionErrCodeFailure"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->kDocDetectionErrCodeFailure:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    invoke-static {}, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->$values()[Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->$VALUES:[Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->$VALUES:[Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    return-object v0
.end method
