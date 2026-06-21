.class public final Landroidx/compose/animation/core/TwoWayConverterImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final convertFromVector:Lkotlin/jvm/functions/Function1;

.field public final convertToVector:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    return-void
.end method
