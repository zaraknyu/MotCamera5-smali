.class public final enum Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CCornersInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CCornersInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

.field public static final enum kCCornersInfoTypeHC:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

.field public static final enum kCCornersInfoTypeLC:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

.field public static final enum kCCornersInfoTypeLive:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

.field public static final enum kCCornersInfoTypeNN:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

.field public static final enum kCCornersInfoTypeNone:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;
    .locals 5

    sget-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeLive:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    sget-object v1, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeHC:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    sget-object v2, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeLC:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    sget-object v3, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeNN:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    sget-object v4, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeNone:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    const-string v1, "kCCornersInfoTypeLive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeLive:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    const-string v1, "kCCornersInfoTypeHC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeHC:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    const-string v1, "kCCornersInfoTypeLC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeLC:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    const-string v1, "kCCornersInfoTypeNN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeNN:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    new-instance v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    const-string v1, "kCCornersInfoTypeNone"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeNone:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    invoke-static {}, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->$values()[Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->$VALUES:[Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->$VALUES:[Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    return-object v0
.end method
