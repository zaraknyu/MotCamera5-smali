.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final context:Landroid/content/Context;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final glowColor:J

.field public final glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValuesImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    iput-wide p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    iput-object p5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.AndroidEdgeEffectOverscrollFactory"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    iget-object v3, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    iget-object v3, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    iget-wide v5, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object p1, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    invoke-static {v3, v4, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
