.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TEXT",
        "IMAGE",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

.field public static final enum IMAGE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

.field public static final enum TEXT:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->TEXT:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->IMAGE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->TEXT:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->IMAGE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->$values()[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/ContentType;->value:I

    return p0
.end method
