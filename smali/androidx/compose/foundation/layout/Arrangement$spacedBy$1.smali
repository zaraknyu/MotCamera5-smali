.class public final Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

.field public static final INSTANCE$1:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->INSTANCE$1:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    check-cast p2, Landroidx/compose/ui/unit/Density;

    invoke-interface {p1, p2}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/high16 v0, -0x40800000    # -1.0f

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    :goto_0
    const/4 p1, 0x1

    int-to-float p1, p1

    add-float/2addr p1, v0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
