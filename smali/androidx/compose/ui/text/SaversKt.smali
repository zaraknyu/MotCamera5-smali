.class public abstract Landroidx/compose/ui/text/SaversKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AnnotationRangeListSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final AnnotationRangeSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final BaselineShiftSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final ClickableSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

.field public static final FontWeightSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final LineHeightStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final LinkSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final LocaleListSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final LocaleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

.field public static final ParagraphStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final ShadowSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final SpanStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final TextDecorationSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final TextGeometricTransformSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final TextIndentSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final TextLinkStylesSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

.field public static final UrlAnnotationSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final VerbatimTtsAnnotationSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$1:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$3:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    sget-object v2, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$2:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$4:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$3:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$5:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$22:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$24:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$21:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$23:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$5:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$7:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$12:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$14:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$14:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$16:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$18:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$20:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$15:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$17:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$16:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$18:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$17:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$19:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$7:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$9:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$4:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$6:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$19:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$21:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$13:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$15:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$6:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$8:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$20:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$22:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$11:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$13:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$9:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$11:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$10:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$12:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$8:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$10:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public static final save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p1, p2, p0}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaveableHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
