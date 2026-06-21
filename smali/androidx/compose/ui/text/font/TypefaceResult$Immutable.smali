.class public final Landroidx/compose/ui/text/font/TypefaceResult$Immutable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/State;


# instance fields
.field public final cacheable:Z

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->cacheable:Z

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    return-object p0
.end method
