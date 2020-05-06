# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Agpv4(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'AGPv4'


class Asm294V2(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'ASM294v2'


class Agamp4(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'AgamP4'


class Amel45(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Amel_4.5'


class Bdgp6(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'BDGP6'


class Canfam31(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'CanFam3.1'


class Fugu5(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'FUGU5'


class Grch37(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'GRCh37'


class Grch38(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'GRCh38'


class Grcm38(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'GRCm38'


class Grcz11(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'GRCz11'


class Galgal5(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Galgal5'


class Gm02(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Gm02'


class Irgsp10(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'IRGSP-1.0'


class Jgi42(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'JGI_4.2'


class Kh(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'KH'


class Mmul801(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Mmul_8.0.1'


class PanTro30(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Pan_tro_3.0'


class R6411(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'R64-1-1'


class Rnor60(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Rnor_6.0'


class Tair10(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'TAIR10'


class Tetraodon8(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'TETRAODON8'


class Umd31(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'UMD3.1'


class Wbcel235(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'WBcel235'


class Mondom5(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=50, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=50, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'monDom5'


class Orthologs(models.Model):
    id = models.IntegerField(primary_key=True)
    cluster = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'orthologs'


class OrthologsLookup(models.Model):
    intron_id = models.TextField(blank=True, null=True)
    clusters = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'orthologs_lookup'


class U12S(models.Model):
    short_seq = models.CharField(max_length=33, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=30, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=13, blank=True, null=True)
    intron_id = models.TextField(primary_key=True)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.CharField(max_length=1, blank=True, null=True)
    tds = models.CharField(max_length=5, blank=True, null=True)
    up_seq = models.CharField(max_length=200, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=200, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=20, blank=True, null=True)
    trans_id = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u12s'
