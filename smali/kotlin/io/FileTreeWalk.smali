.class public final Lkotlin/io/FileTreeWalk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final direction:Ljava/lang/Object;

.field public final start:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    const-string/jumbo v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/io/FileTreeWalk;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Lkotlin/io/FileTreeWalk;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    invoke-direct {v0, p0}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
