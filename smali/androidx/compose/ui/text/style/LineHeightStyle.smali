.class public final Landroidx/compose/ui/text/style/LineHeightStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Default:Landroidx/compose/ui/text/style/LineHeightStyle;


# instance fields
.field public final alignment:F

.field public final trim:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle;

    sget v1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:F

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FI)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    iput p2, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle;

    iget v1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    sget v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    iget v2, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    iget p1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineHeightStyle(alignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    if-ne p0, v1, :cond_0

    const-string p0, "LineHeightStyle.Trim.FirstLineTop"

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    if-ne p0, v1, :cond_1

    const-string p0, "LineHeightStyle.Trim.LastLineBottom"

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    if-ne p0, v1, :cond_2

    const-string p0, "LineHeightStyle.Trim.Both"

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    const-string p0, "LineHeightStyle.Trim.None"

    goto :goto_0

    :cond_3
    const-string p0, "Invalid"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",mode=Mode(value=0))"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
