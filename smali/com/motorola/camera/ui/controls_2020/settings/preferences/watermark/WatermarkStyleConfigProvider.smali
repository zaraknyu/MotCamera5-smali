.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;",
        "",
        "<init>",
        "()V",
        "getDefaultWatermarkStyles",
        "",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
        "getFirstUseDefaultStyle",
        "deviceCategory",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;",
        "getDeviceCategory",
        "getExtraStylesForDevice",
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

.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getExtraStylesForDevice()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleExtensionMatcher;->match()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDefaultWatermarkStyles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/watermark/WatermarkEditor;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;->categorizeMotoDevice(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;->getExtraStylesForDevice()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceCategory()Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/watermark/WatermarkEditor;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;->categorizeMotoDevice(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    move-result-object p0

    return-object p0
.end method

.method public final getFirstUseDefaultStyle(Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;
    .locals 0

    const-string p0, "deviceCategory"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->HIGH_END:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    return-object p0
.end method
