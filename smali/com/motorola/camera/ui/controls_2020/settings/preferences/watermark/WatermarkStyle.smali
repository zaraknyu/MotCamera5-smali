.class public abstract Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u000c2\u00020\u0001:\u0005\u0008\t\n\u000b\u000cB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0004\r\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
        "",
        "name",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "Label",
        "Basic",
        "Frame",
        "Border",
        "Companion",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;",
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
.field public static final $stable:I

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

.field private static final builtInStyles$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ZGaUw8lmvIDNC6Ib1soWJcFtb5k()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->builtInStyles_delegate$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    new-instance v0, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->builtInStyles$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getBuiltInStyles$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->builtInStyles$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final builtInStyles_delegate$lambda$0()Ljava/util/List;
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs isStyle(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->isStyle(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;[Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->name:Ljava/lang/String;

    return-object p0
.end method
