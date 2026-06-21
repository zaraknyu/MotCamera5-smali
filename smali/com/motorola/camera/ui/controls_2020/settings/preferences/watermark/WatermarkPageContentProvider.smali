.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;",
        "",
        "<init>",
        "()V",
        "defaultPageContentList",
        "",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;",
        "getDefaultPageContentList",
        "()Ljava/util/List;",
        "getPageContent",
        "style",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
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

.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;

.field private static final defaultPageContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;ZZZZZZ)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    const/4 v9, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;ZZZZZZ)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;ZZZZZZ)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    const/4 v11, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;ZZZZZZ)V

    filled-new-array {v1, v2, v3, v4}, [Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;->defaultPageContentList:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultPageContentList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;->defaultPageContentList:Ljava/util/List;

    return-object p0
.end method

.method public final getPageContent(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;
    .locals 2

    const-string/jumbo p0, "style"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContentProvider;->defaultPageContentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;->getWatermarkStyle()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPageContent;

    return-object v0
.end method
