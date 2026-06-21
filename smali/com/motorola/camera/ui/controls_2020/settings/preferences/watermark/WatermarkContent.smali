.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001b\u001a\u00020\tH\u00c6\u0003JO\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0013R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013\u00a8\u0006\""
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;",
        "",
        "productName",
        "",
        "signature",
        "date",
        "time",
        "shootingParams",
        "isRtl",
        "",
        "useStroke",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V",
        "getProductName",
        "()Ljava/lang/String;",
        "getSignature",
        "getDate",
        "getTime",
        "getShootingParams",
        "()Z",
        "getUseStroke",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final date:Ljava/lang/String;

.field private final isRtl:Z

.field private final productName:Ljava/lang/String;

.field private final shootingParams:Ljava/lang/String;

.field private final signature:Ljava/lang/String;

.field private final time:Ljava/lang/String;

.field private final useStroke:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string/jumbo v0, "productName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shootingParams"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    iput-boolean p7, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-boolean p7, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    :cond_6
    move p8, p6

    move p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;
    .locals 8

    const-string/jumbo p0, "productName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "signature"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "date"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "time"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "shootingParams"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    return-object p0
.end method

.method public final getProductName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShootingParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    return-object p0
.end method

.method public final getUseStroke()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->productName:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->signature:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->date:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->time:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->shootingParams:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl:Z

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->useStroke:Z

    const-string v6, ", signature="

    const-string v7, ", date="

    const-string v8, "WatermarkContent(productName="

    invoke-static {v8, v0, v6, v1, v7}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    const-string v6, ", shootingParams="

    invoke-static {v0, v2, v1, v3, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useStroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
