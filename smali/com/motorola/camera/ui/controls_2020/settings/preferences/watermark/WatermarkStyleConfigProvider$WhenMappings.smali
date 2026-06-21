.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->values()[Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->HIGH_END:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;->HIGH_END:Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoSeriesCategory;

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyleConfigProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
