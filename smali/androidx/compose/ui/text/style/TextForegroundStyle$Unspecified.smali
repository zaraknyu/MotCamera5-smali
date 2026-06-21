.class public final Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/style/TextForegroundStyle;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public final getBrush()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getColor-0d7_KjU()J
    .locals 2

    sget p0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    return-wide v0
.end method
