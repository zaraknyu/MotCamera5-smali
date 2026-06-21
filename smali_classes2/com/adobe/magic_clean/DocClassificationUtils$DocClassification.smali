.class public final enum Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/DocClassificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocClassification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationBook:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationBusinessCard:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationForm:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationID:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationOther:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationReceipt:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public static final enum kDocClassificationWhiteBoard:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;
    .locals 8

    sget-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationBook:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationBusinessCard:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v2, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationForm:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v3, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationID:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v4, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationOther:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v5, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationReceipt:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v6, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationWhiteBoard:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    sget-object v7, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    filled-new-array/range {v0 .. v7}, [Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationBook"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationBook:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationBusinessCard"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationBusinessCard:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationForm"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationForm:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationID:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationOther"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationOther:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationReceipt"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationReceipt:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationWhiteBoard"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationWhiteBoard:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    new-instance v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    const-string v1, "kDocClassificationEnd"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationEnd:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    invoke-static {}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->$values()[Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->$VALUES:[Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->$VALUES:[Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    return-object v0
.end method
