.class public final enum Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocSelectorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public static final enum kDocSelectorTypeBook:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public static final enum kDocSelectorTypeBusinessCard:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public static final enum kDocSelectorTypeDocument:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public static final enum kDocSelectorTypeEnd:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public static final enum kDocSelectorTypeForm:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public static final enum kDocSelectorTypeReceipt:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

.field public static final enum kDocSelectorTypeWhiteboard:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;


# direct methods
.method private static synthetic $values()[Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;
    .locals 7

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBusinessCard:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v1, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeForm:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v2, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeDocument:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v3, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeWhiteboard:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v4, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeReceipt:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v5, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBook:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    sget-object v6, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeEnd:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    filled-new-array/range {v0 .. v6}, [Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const-string v1, "kDocSelectorTypeBusinessCard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBusinessCard:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const-string v1, "kDocSelectorTypeForm"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeForm:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const-string v1, "kDocSelectorTypeDocument"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeDocument:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const-string v1, "kDocSelectorTypeWhiteboard"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeWhiteboard:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const-string v1, "kDocSelectorTypeReceipt"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeReceipt:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const-string v1, "kDocSelectorTypeBook"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeBook:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    const-string v1, "kDocSelectorTypeEnd"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeEnd:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    invoke-static {}, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->$values()[Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    move-result-object v0

    sput-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;
    .locals 1

    const-class v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    return-object p0
.end method

.method public static values()[Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;
    .locals 1

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->$VALUES:[Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    invoke-virtual {v0}, [Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    return-object v0
.end method
